package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppChinese;

/**
 * 语文词语Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppChineseMapper 
{
    /**
     * 查询语文词语
     * 
     * @param id 语文词语主键
     * @return 语文词语
     */
    public AppChinese selectAppChineseById(Integer id);

    /**
     * 查询语文词语列表
     * 
     * @param appChinese 语文词语
     * @return 语文词语集合
     */
    public List<AppChinese> selectAppChineseList(AppChinese appChinese);

    /**
     * 新增语文词语
     * 
     * @param appChinese 语文词语
     * @return 结果
     */
    public int insertAppChinese(AppChinese appChinese);

    /**
     * 修改语文词语
     * 
     * @param appChinese 语文词语
     * @return 结果
     */
    public int updateAppChinese(AppChinese appChinese);

    /**
     * 删除语文词语
     * 
     * @param id 语文词语主键
     * @return 结果
     */
    public int deleteAppChineseById(Integer id);

    /**
     * 批量删除语文词语
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppChineseByIds(Integer[] ids);
}
