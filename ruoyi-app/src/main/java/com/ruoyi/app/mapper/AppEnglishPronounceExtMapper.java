package com.ruoyi.app.mapper;

import com.ruoyi.app.domain.AppEnglishPronounce;

import java.util.List;

/**
 * 单词发音对照Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-15
 */
public interface AppEnglishPronounceExtMapper
{
    /**
     * 查询单词发音对照
     * 
     * @param word 按单词查找
     * @return 单词发音对照
     */
    public AppEnglishPronounce selectAppEnglishPronounceByWord(String word);
}
