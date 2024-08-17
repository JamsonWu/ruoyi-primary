package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppEnglishLesson;

/**
 * 小学英语单词词组Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppEnglishLessonMapper 
{
    /**
     * 查询小学英语单词词组
     * 
     * @param id 小学英语单词词组主键
     * @return 小学英语单词词组
     */
    public AppEnglishLesson selectAppEnglishLessonById(Long id);

    /**
     * 查询小学英语单词词组列表
     * 
     * @param appEnglishLesson 小学英语单词词组
     * @return 小学英语单词词组集合
     */
    public List<AppEnglishLesson> selectAppEnglishLessonList(AppEnglishLesson appEnglishLesson);

    /**
     * 新增小学英语单词词组
     * 
     * @param appEnglishLesson 小学英语单词词组
     * @return 结果
     */
    public int insertAppEnglishLesson(AppEnglishLesson appEnglishLesson);

    /**
     * 修改小学英语单词词组
     * 
     * @param appEnglishLesson 小学英语单词词组
     * @return 结果
     */
    public int updateAppEnglishLesson(AppEnglishLesson appEnglishLesson);

    /**
     * 删除小学英语单词词组
     * 
     * @param id 小学英语单词词组主键
     * @return 结果
     */
    public int deleteAppEnglishLessonById(Long id);

    /**
     * 批量删除小学英语单词词组
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppEnglishLessonByIds(Long[] ids);
}
