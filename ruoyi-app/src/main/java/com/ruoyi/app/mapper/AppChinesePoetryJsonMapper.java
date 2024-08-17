package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetryJson;

/**
 * JSON格式完整数据Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppChinesePoetryJsonMapper 
{
    /**
     * 查询JSON格式完整数据
     * 
     * @param id JSON格式完整数据主键
     * @return JSON格式完整数据
     */
    public AppChinesePoetryJson selectAppChinesePoetryJsonById(Long id);

    /**
     * 查询JSON格式完整数据列表
     * 
     * @param appChinesePoetryJson JSON格式完整数据
     * @return JSON格式完整数据集合
     */
    public List<AppChinesePoetryJson> selectAppChinesePoetryJsonList(AppChinesePoetryJson appChinesePoetryJson);

    /**
     * 新增JSON格式完整数据
     * 
     * @param appChinesePoetryJson JSON格式完整数据
     * @return 结果
     */
    public int insertAppChinesePoetryJson(AppChinesePoetryJson appChinesePoetryJson);

    /**
     * 修改JSON格式完整数据
     * 
     * @param appChinesePoetryJson JSON格式完整数据
     * @return 结果
     */
    public int updateAppChinesePoetryJson(AppChinesePoetryJson appChinesePoetryJson);

    /**
     * 删除JSON格式完整数据
     * 
     * @param id JSON格式完整数据主键
     * @return 结果
     */
    public int deleteAppChinesePoetryJsonById(Long id);

    /**
     * 批量删除JSON格式完整数据
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryJsonByIds(Long[] ids);
}
