package com.ruoyi.app.service.impl;

import java.util.List;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.app.domain.*;
import com.ruoyi.app.mapper.*;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import org.apache.poi.ss.usermodel.DateUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.service.IAppChinesePoetryJsonService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 提供JSON完整数据,预留换JSON库Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
@Service
public class AppChinesePoetryJsonServiceImpl extends AppChinesePoetryJsonHelper implements IAppChinesePoetryJsonService
{
    @Autowired
    private AppChinesePoetryJsonMapper appChinesePoetryJsonMapper;
    @Autowired
    private AppChinesePoetryJsonExtMapper appChinesePoetryJsonExtMapper;
    /**
     * 操作诗词积累汇总表，提供给UI使用
     */
    @Autowired
    AppChinesePoetryMapper appChinesePoetryMapper;
    /**
     * 操作诗词积累主表
     */
    @Autowired
    AppChinesePoetryAccumMapper appChinesePoetryAccumMapper;
    /**
     * 操作诗词积累明细表
     */
    @Autowired
    AppChinesePoetryAccumDetailMapper appChinesePoetryAccumDetailMapper;


    /**
     * 查询提供JSON完整数据,预留换JSON库
     * 
     * @param id 提供JSON完整数据,预留换JSON库主键
     * @return 提供JSON完整数据,预留换JSON库
     */
    @Override
    public AppChinesePoetryJson selectAppChinesePoetryJsonById(Long id)
    {
        return appChinesePoetryJsonMapper.selectAppChinesePoetryJsonById(id);
    }

    /**
     * 查询提供JSON完整数据,预留换JSON库列表
     * 
     * @param appChinesePoetryJson 提供JSON完整数据,预留换JSON库
     * @return 提供JSON完整数据,预留换JSON库
     */
    @Override
    public List<AppChinesePoetryJson> selectAppChinesePoetryJsonList(AppChinesePoetryJson appChinesePoetryJson)
    {
        return appChinesePoetryJsonMapper.selectAppChinesePoetryJsonList(appChinesePoetryJson);
    }
    private int doManyTableInsert(AppChinesePoetryJson appChinesePoetryJson){
        // 保存入库发现异常要如何返回到前端呢？
        appChinesePoetryJson.setCreateTime(DateUtils.getNowDate());
        String jsonData = appChinesePoetryJson.getJsonData();
        AppChinesePoetryDTO dto = JSONObject.parseObject(jsonData, AppChinesePoetryDTO.class);

        String categoryId = dto.getCategoryId();
        // 添加数据校验 todo...
        AppChinesePoetryAccum appChinesePoetryAccum = new AppChinesePoetryAccum();
        BeanUtils.copyProperties(dto,appChinesePoetryAccum,"content");
        appChinesePoetryAccum.setCreateBy(appChinesePoetryJson.getCreateBy());
        appChinesePoetryAccum.setCreateTime(DateUtils.getNowDate());

        // 先删除旧数据
        Long sysId = appChinesePoetryJson.getSysId();
        appChinesePoetryJsonExtMapper.deleteAppChinesePoetryJsonBySysId(sysId);
        appChinesePoetryJsonExtMapper.deleteAppChinesePoetryAccumBySysId(sysId);
        appChinesePoetryJsonExtMapper.deleteAppChinesePoetryAccumDetailBySysId(sysId);
        appChinesePoetryJsonExtMapper.deleteAppChinesePoetryJsonBySysId(sysId);
        appChinesePoetryJsonExtMapper.deleteAppChinesePoetryBySysId(sysId);

        // 1.添加到诗词主表，一首诗词只有一条记录，不包含诗句
        appChinesePoetryAccumMapper.insertAppChinesePoetryAccum(appChinesePoetryAccum);
        // 诗词
        StringBuilder contentBuilder = new StringBuilder();
        // 注释
        StringBuilder commentBuilder = new StringBuilder();
        // 翻译
        StringBuilder translationBuilder = new StringBuilder();
        // 拼音
        StringBuilder pinyinBuilder = new StringBuilder();
        // 问题
        StringBuilder questionBuilder = new StringBuilder();
        // 查询字
        StringBuilder wordSearchBuilder = new StringBuilder();
        // 道理
        StringBuilder truthBuilder = new StringBuilder();
        for (AppChinesePoetryAccumDetail m: dto.getContent())  {
            m.setSentense(processData(m.getSentense(),categoryId));
            m.setMean(processData(m.getMean(),categoryId));
            m.setWord(processData(m.getWord()));
            m.setWordMean(processData(m.getWordMean()));
            m.setQuestion(processData(m.getQuestion(),categoryId));
            m.setTruth(processData(m.getTruth(),categoryId));
            m.setWordSearch(processData(m.getWordSearch()));
            m.setPinyin(processData(m.getPinyin()));
            m.setpSysId(appChinesePoetryAccum.getSysId());
            contentBuilder.append(m.getSentense());
            commentBuilder.append(m.getWordMean());
            translationBuilder.append(m.getMean());
            pinyinBuilder.append(m.getPinyin());
            questionBuilder.append(m.getQuestion());
            wordSearchBuilder.append(m.getWordSearch());
            truthBuilder.append(m.getTruth());
            m.setCreateBy(appChinesePoetryJson.getCreateBy());
            m.setCreateTime(DateUtils.getNowDate());
            // 2.诗句添加到诗词明细表，
            appChinesePoetryAccumDetailMapper.insertAppChinesePoetryAccumDetail(m);
        }
        // 3.添加诗词汇总表，一首诗词只有一条记录，包含诗句
        AppChinesePoetry appChinesePoetry = new AppChinesePoetry();
        BeanUtils.copyProperties(appChinesePoetryAccum,appChinesePoetry);
        appChinesePoetry.setContent(contentBuilder.toString());
        appChinesePoetry.setComment(commentBuilder.toString());
        appChinesePoetry.setTranslation(translationBuilder.toString());
        appChinesePoetry.setTruth(truthBuilder.toString());
        appChinesePoetry.setPinyin(pinyinBuilder.toString());
        appChinesePoetry.setQuestion(questionBuilder.toString());
        appChinesePoetry.setWordSearch(wordSearchBuilder.toString());
        appChinesePoetryMapper.insertAppChinesePoetry(appChinesePoetry);
        return  1;
    }
    private String processData(String data){
        if (StringUtils.isNull(data) || StringUtils.isEmpty(data)) {
            return  StringUtils.EMPTY;
        }
        return data.replace("（",")")
                .replace("）", ")")
                .replace("：",":")
                .replace("。。","。")
                .replace("；",";") + StringUtils.SPACE;
    }
//    private String processData(String data, String categoryId){
//        if (StringUtils.isNull(data) || StringUtils.isEmpty(data)) {
//            return  StringUtils.EMPTY;
//        }
//
//        String res =data.replace("（","(")
//                .replace("）", ")")
//                .replace("：",":")
//                .replace("。。","。")
//                .replace("；",";");
//
//        if (Convert.toInt(categoryId) <= 3) {
//            char lastChar = res.charAt(res.length() - 1);
//            // 如果字符串末尾不是句号、问号或感叹号，则添加句号
//            if (lastChar != '。' && lastChar != '？' && lastChar != '?' && lastChar != '!' && lastChar != '！') {
//                return  res + "。";
//            }
//        }
//
//        return res + StringUtils.SPACE;
//    }
    /**
     * 新增提供JSON完整数据,预留换JSON库
     * 
     * @param appChinesePoetryJson 提供JSON完整数据,预留换JSON库
     * @return 结果
     */
    @Override
    @Transactional
    public int insertAppChinesePoetryJson(AppChinesePoetryJson appChinesePoetryJson)
    {
        this.doManyTableInsert(appChinesePoetryJson);
        // 3.添加到诗词明细表，主要是诗句
        return appChinesePoetryJsonMapper.insertAppChinesePoetryJson(appChinesePoetryJson);
    }

    /**
     * 修改提供JSON完整数据,预留换JSON库
     * 
     * @param appChinesePoetryJson 提供JSON完整数据,预留换JSON库
     * @return 结果
     */
    @Override
    @Transactional
    public int updateAppChinesePoetryJson(AppChinesePoetryJson appChinesePoetryJson)
    {
        this.doManyTableInsert(appChinesePoetryJson);
        return appChinesePoetryJsonMapper.insertAppChinesePoetryJson(appChinesePoetryJson);
    }

    /**
     * 批量删除提供JSON完整数据,预留换JSON库
     * 
     * @param ids 需要删除的提供JSON完整数据,预留换JSON库主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryJsonByIds(Long[] ids)
    {
        return appChinesePoetryJsonMapper.deleteAppChinesePoetryJsonByIds(ids);
    }

    /**
     * 删除提供JSON完整数据,预留换JSON库信息
     * 
     * @param id 提供JSON完整数据,预留换JSON库主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryJsonById(Long id)
    {
        AppChinesePoetryJson appChinesePoetryJson =   appChinesePoetryJsonMapper.selectAppChinesePoetryJsonById(id);
        if (StringUtils.isNotNull(appChinesePoetryJson)) {
            // 先删除旧数据
            Long sysId = appChinesePoetryJson.getSysId();
            appChinesePoetryJsonExtMapper.deleteAppChinesePoetryAccumBySysId(sysId);
            appChinesePoetryJsonExtMapper.deleteAppChinesePoetryAccumDetailBySysId(sysId);
            appChinesePoetryJsonExtMapper.deleteAppChinesePoetryBySysId(sysId);
        }
        return appChinesePoetryJsonMapper.deleteAppChinesePoetryJsonById(id);
    }
}
