package com.ruoyi.app.service.impl;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.ruoyi.app.domain.*;
import com.ruoyi.app.mapper.*;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.service.IAppChinesePoetryService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 诗与词Service业务层处理
 *
 * @author ruoyi
 * @date 2024-05-21
 */
@Service
public class AppChinesePoetryServiceImpl extends AppChinesePoetryJsonHelper implements IAppChinesePoetryService {
    @Autowired
    private AppChinesePoetryMapper appChinesePoetryMapper;
    @Autowired
    private AppChinesePoetryAccumExtMapper appChinesePoetryAccumExtMapper;

    @Autowired
    private AppChinesePoetryAccumDetailExtMapper appChinesePoetryAccumDetailExtMapper;

    @Autowired
    private AppChinesePoetryAccumDetailMapper appChinesePoetryAccumDetailMapper;

    @Autowired
    private AppChinesePoetryJsonExtMapper appChinesePoetryJsonExtMapper;

    @Autowired
    private  AppChinesePoetryJsonMapper appChinesePoetryJsonMapper;


    @Autowired
    private AppChinesePoetryAccumMapper appChinesePoetryAccumMapper;

    /**
     * 查询诗与词
     *
     * @param id 诗与词主键
     * @return 诗与词
     */
    @Override
    public AppChinesePoetry selectAppChinesePoetryById(Long id) {
        return appChinesePoetryMapper.selectAppChinesePoetryById(id);
    }

    /**
     * 查询诗与词列表
     *
     * @param appChinesePoetry 诗与词
     * @return 诗与词
     */
    @Override
    public List<AppChinesePoetryExt> selectAppChinesePoetryList(AppChinesePoetryExt appChinesePoetry) {
        List<AppChinesePoetryExt> list = null;
        // 业务处理
        // 如果存在查询字、重点句等查询条件，则就要走自定义SQL语句
        // 因为查询字与重点要以明细表内容为主
        if (StringUtils.isNotNull(appChinesePoetry.getIsVip()) ||
                StringUtils.isNotNull(appChinesePoetry.getWordSearch())) {
            // 子类转父类
            list = appChinesePoetryAccumExtMapper.selectAppChinesePoetryListByAccumDetail(appChinesePoetry);
        } else {
            list = appChinesePoetryMapper.selectAppChinesePoetryList(appChinesePoetry)
                    .stream().map(
                            p -> {
                                AppChinesePoetryExt appChinesePoetryExt = new AppChinesePoetryExt();
                                BeanUtils.copyProperties(p, appChinesePoetryExt);
                                return appChinesePoetryExt;
                            }

                    )
                    .collect(Collectors.toList());
        }
        return list;
    }

    /**
     * 新增诗与词
     *
     * @param appChinesePoetry 诗与词
     * @return 结果
     */
    @Override
    public int insertAppChinesePoetry(AppChinesePoetry appChinesePoetry) {
        return appChinesePoetryMapper.insertAppChinesePoetry(appChinesePoetry);
    }

    /**
     * 修改诗与词
     *
     * @param appChinesePoetry 诗与词
     * @return 结果
     */
    @Override
    @Transactional
    public int updateAppChinesePoetry(AppChinesePoetryExt appChinesePoetry) {
        int res = 0;
        // 1.修改导入表中的JSON对象
       AppChinesePoetryJson appChinesePoetryJson =  appChinesePoetryJsonExtMapper.selectAppChinesePoetryJsonBySysId(appChinesePoetry.getSysId());
       AppChinesePoetryDTO dto = JSONObject.parseObject(appChinesePoetryJson.getJsonData(), AppChinesePoetryDTO.class);
        if (StringUtils.isNotNull(appChinesePoetry.getChildId()) && appChinesePoetry.getChildId() > 0) {
            // 指定句子处理
            for (AppChinesePoetryAccumDetail appChinesePoetryAccumDetail : dto.getContent()) {
                if (processData(appChinesePoetryAccumDetail.getSentense(), appChinesePoetry.getCategoryId()).equals(appChinesePoetry.getContent())) {
                    appChinesePoetryAccumDetail.setWordSearch(appChinesePoetry.getWordSearch());
                    appChinesePoetryAccumDetail.setIsVip(appChinesePoetry.getIsVip());
                }
            }
        }
        else {
            // 整首讨词处理
            dto.setMustWrite(appChinesePoetry.getMustWrite());
        }
        appChinesePoetryJson.setJsonData(JSONObject.from(dto).toJSONString());
        appChinesePoetryJson.setUpdateBy(appChinesePoetry.getUpdateBy());
        appChinesePoetryJson.setUpdateTime(DateUtils.getNowDate());

        // 1.JSON数据更新提交更改
        appChinesePoetryJsonMapper.updateAppChinesePoetryJson(appChinesePoetryJson);
        // 2.修改明细表数据
        if (StringUtils.isNotNull(appChinesePoetry.getChildId()) && appChinesePoetry.getChildId() > 0) {
            // 设置重点句，查询字
            AppChinesePoetryAccumDetail appChinesePoetryAccumDetail = appChinesePoetryAccumDetailMapper.selectAppChinesePoetryAccumDetailById(appChinesePoetry.getChildId());
            appChinesePoetryAccumDetail.setIsVip(appChinesePoetry.getIsVip());
            appChinesePoetryAccumDetail.setWordSearch(appChinesePoetry.getWordSearch());
            appChinesePoetryAccumDetail.setUpdateBy(appChinesePoetry.getUpdateBy());
            appChinesePoetryAccumDetail.setUpdateTime(DateUtils.getNowDate());
            appChinesePoetryAccumDetailMapper.updateAppChinesePoetryAccumDetail(appChinesePoetryAccumDetail);
            res = 1;
        }
        // 3.更改主表
        if (StringUtils.isNull(appChinesePoetry.getChildId())) {
            // 设置默写参数
            AppChinesePoetryAccum appChinesePoetryAccum = appChinesePoetryAccumExtMapper.selectAppChinesePoetryAccumBySysId(appChinesePoetry.getSysId());
            if (StringUtils.isNotNull(appChinesePoetryAccum)) {
                appChinesePoetryAccum.setUpdateBy(appChinesePoetry.getUpdateBy());
                appChinesePoetryAccum.setUpdateTime(DateUtils.getNowDate());
                appChinesePoetryAccum.setMustWrite(appChinesePoetry.getMustWrite());
                appChinesePoetryAccumMapper.updateAppChinesePoetryAccum(appChinesePoetryAccum);
                res = 1;
            }
        }
        return res;
    }

    /**
     * 批量删除诗与词
     *
     * @param ids 需要删除的诗与词主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryByIds(Long[] ids) {
        return appChinesePoetryMapper.deleteAppChinesePoetryByIds(ids);
    }

    /**
     * 删除诗与词信息
     *
     * @param id 诗与词主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryById(Long id) {
        return appChinesePoetryMapper.deleteAppChinesePoetryById(id);
    }

    public List<AppChinesePoetryAccum> selectAppChinesePoetryAccumListBySysId(List<Long> list) {
        return appChinesePoetryAccumExtMapper.selectAppChinesePoetryAccumListBySysId(list);
    }

    public List<AppChinesePoetryAccumDetail> selectAppChinesePoetryAccumDetailListBySysId(List<Long> list) {
        return appChinesePoetryAccumDetailExtMapper.selectAppChinesePoetryAccumDetailListByPSysId(list);
    }
}
