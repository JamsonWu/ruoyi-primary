package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppEnglishPronounce;

/**
 * 单词发音对照Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppEnglishPronounceMapper 
{
    /**
     * 查询单词发音对照
     * 
     * @param id 单词发音对照主键
     * @return 单词发音对照
     */
    public AppEnglishPronounce selectAppEnglishPronounceById(Long id);

    /**
     * 查询单词发音对照列表
     * 
     * @param appEnglishPronounce 单词发音对照
     * @return 单词发音对照集合
     */
    public List<AppEnglishPronounce> selectAppEnglishPronounceList(AppEnglishPronounce appEnglishPronounce);

    /**
     * 新增单词发音对照
     * 
     * @param appEnglishPronounce 单词发音对照
     * @return 结果
     */
    public int insertAppEnglishPronounce(AppEnglishPronounce appEnglishPronounce);

    /**
     * 修改单词发音对照
     * 
     * @param appEnglishPronounce 单词发音对照
     * @return 结果
     */
    public int updateAppEnglishPronounce(AppEnglishPronounce appEnglishPronounce);

    /**
     * 删除单词发音对照
     * 
     * @param id 单词发音对照主键
     * @return 结果
     */
    public int deleteAppEnglishPronounceById(Long id);

    /**
     * 批量删除单词发音对照
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppEnglishPronounceByIds(Long[] ids);
}
