package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.app.mapper.AppEnglishLessonExtMapper;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppEnglishLessonMapper;
import com.ruoyi.app.domain.AppEnglishLesson;
import com.ruoyi.app.service.IAppEnglishLessonService;

/**
 * 小学英语单词词组Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-16
 */
@Service
public class AppEnglishLessonServiceImpl implements IAppEnglishLessonService 
{
    @Autowired
    private AppEnglishLessonMapper appEnglishLessonMapper;
    @Autowired
    private AppEnglishLessonExtMapper appEnglishLessonExtMapper;

    /**
     * 查询小学英语单词词组
     * 
     * @param id 小学英语单词词组主键
     * @return 小学英语单词词组
     */
    @Override
    public AppEnglishLesson selectAppEnglishLessonById(Long id)
    {
        return appEnglishLessonMapper.selectAppEnglishLessonById(id);
    }

    /**
     * 查询小学英语单词词组列表
     * 
     * @param appEnglishLesson 小学英语单词词组
     * @return 小学英语单词词组
     */
    @Override
    public List<AppEnglishLesson> selectAppEnglishLessonList(AppEnglishLesson appEnglishLesson)
    {
        return appEnglishLessonMapper.selectAppEnglishLessonList(appEnglishLesson);
    }

    /**
     * 新增小学英语单词词组
     * 
     * @param appEnglishLesson 小学英语单词词组
     * @return 结果
     */
    @Override
    public int insertAppEnglishLesson(AppEnglishLesson appEnglishLesson)
    {
        AppEnglishLesson appEnglishLessonOld = appEnglishLessonExtMapper.selectAppEnglishLessonByWord(appEnglishLesson.getWord());
        if (StringUtils.isNotNull(appEnglishLessonOld)){
            BeanUtils.copyProperties(appEnglishLesson,appEnglishLessonOld,"id","createBy","createTime");
            return appEnglishLessonMapper.updateAppEnglishLesson(appEnglishLessonOld);
        }
        else {
            return appEnglishLessonMapper.insertAppEnglishLesson(appEnglishLesson);
        }
    }

    /**
     * 修改小学英语单词词组
     * 
     * @param appEnglishLesson 小学英语单词词组
     * @return 结果
     */
    @Override
    public int updateAppEnglishLesson(AppEnglishLesson appEnglishLesson)
    {
        return appEnglishLessonMapper.updateAppEnglishLesson(appEnglishLesson);
    }

    /**
     * 批量删除小学英语单词词组
     * 
     * @param ids 需要删除的小学英语单词词组主键
     * @return 结果
     */
    @Override
    public int deleteAppEnglishLessonByIds(Long[] ids)
    {
        return appEnglishLessonMapper.deleteAppEnglishLessonByIds(ids);
    }

    /**
     * 删除小学英语单词词组信息
     * 
     * @param id 小学英语单词词组主键
     * @return 结果
     */
    @Override
    public int deleteAppEnglishLessonById(Long id)
    {
        return appEnglishLessonMapper.deleteAppEnglishLessonById(id);
    }
}
