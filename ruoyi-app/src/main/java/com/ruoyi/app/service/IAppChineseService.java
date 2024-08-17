package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppChinese;

/**
 * 语文词语Service接口
 * 
 * @author ruoyi
 * @date 2024-05-14
 */
public interface IAppChineseService 
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
     * 批量删除语文词语
     * 
     * @param ids 需要删除的语文词语主键集合
     * @return 结果
     */
    public int deleteAppChineseByIds(Integer[] ids);

    /**
     * 删除语文词语信息
     * 
     * @param id 语文词语主键
     * @return 结果
     */
    public int deleteAppChineseById(Integer id);
}
