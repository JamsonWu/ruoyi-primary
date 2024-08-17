package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.app.mapper.AppEnglishPronounceExtMapper;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppEnglishPronounceMapper;
import com.ruoyi.app.domain.AppEnglishPronounce;
import com.ruoyi.app.service.IAppEnglishPronounceService;

/**
 * 单词发音对照Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-15
 */
@Service
public class AppEnglishPronounceServiceImpl implements IAppEnglishPronounceService 
{
    @Autowired
    private AppEnglishPronounceMapper appEnglishPronounceMapper;
    @Autowired
    private AppEnglishPronounceExtMapper appEnglishPronounceExtMapper;

    /**
     * 查询单词发音对照
     * 
     * @param id 单词发音对照主键
     * @return 单词发音对照
     */
    @Override
    public AppEnglishPronounce selectAppEnglishPronounceById(Long id)
    {
        return appEnglishPronounceMapper.selectAppEnglishPronounceById(id);
    }

    /**
     * 查询单词发音对照列表
     * 
     * @param appEnglishPronounce 单词发音对照
     * @return 单词发音对照
     */
    @Override
    public List<AppEnglishPronounce> selectAppEnglishPronounceList(AppEnglishPronounce appEnglishPronounce)
    {
        return appEnglishPronounceMapper.selectAppEnglishPronounceList(appEnglishPronounce);
    }

    /**
     * 新增单词发音对照
     * 
     * @param appEnglishPronounce 单词发音对照
     * @return 结果
     */
    @Override
    public int insertAppEnglishPronounce(AppEnglishPronounce appEnglishPronounce)
    {
        // 新增时要判断是否已存在
        AppEnglishPronounce oldAppEnglishPronounce = appEnglishPronounceExtMapper.selectAppEnglishPronounceByWord(appEnglishPronounce.getWord());
        if (StringUtils.isNotNull(oldAppEnglishPronounce)) {
            oldAppEnglishPronounce.setChinese(appEnglishPronounce.getChinese());
            if (StringUtils.isNotNull(appEnglishPronounce.getWordType())) {
                oldAppEnglishPronounce.setWordType(appEnglishPronounce.getWordType());
            }
            oldAppEnglishPronounce.setPronounce(appEnglishPronounce.getPronounce());
            return appEnglishPronounceMapper.updateAppEnglishPronounce(oldAppEnglishPronounce);
        } else {
            return appEnglishPronounceMapper.insertAppEnglishPronounce(appEnglishPronounce);
        }
    }

    /**
     * 修改单词发音对照
     * 
     * @param appEnglishPronounce 单词发音对照
     * @return 结果
     */
    @Override
    public int updateAppEnglishPronounce(AppEnglishPronounce appEnglishPronounce)
    {
        return appEnglishPronounceMapper.updateAppEnglishPronounce(appEnglishPronounce);
    }

    /**
     * 批量删除单词发音对照
     * 
     * @param ids 需要删除的单词发音对照主键
     * @return 结果
     */
    @Override
    public int deleteAppEnglishPronounceByIds(Long[] ids)
    {
        return appEnglishPronounceMapper.deleteAppEnglishPronounceByIds(ids);
    }

    /**
     * 删除单词发音对照信息
     * 
     * @param id 单词发音对照主键
     * @return 结果
     */
    @Override
    public int deleteAppEnglishPronounceById(Long id)
    {
        return appEnglishPronounceMapper.deleteAppEnglishPronounceById(id);
    }
}
