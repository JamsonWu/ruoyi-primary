package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetryJson;

/**
 * 提供JSON完整数据,预留换JSON库Service接口
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
public interface IAppChinesePoetryJsonService 
{
    /**
     * 查询提供JSON完整数据,预留换JSON库
     * 
     * @param id 提供JSON完整数据,预留换JSON库主键
     * @return 提供JSON完整数据,预留换JSON库
     */
    public AppChinesePoetryJson selectAppChinesePoetryJsonById(Long id);

    /**
     * 查询提供JSON完整数据,预留换JSON库列表
     * 
     * @param appChinesePoetryJson 提供JSON完整数据,预留换JSON库
     * @return 提供JSON完整数据,预留换JSON库集合
     */
    public List<AppChinesePoetryJson> selectAppChinesePoetryJsonList(AppChinesePoetryJson appChinesePoetryJson);

    /**
     * 新增提供JSON完整数据,预留换JSON库
     * 
     * @param appChinesePoetryJson 提供JSON完整数据,预留换JSON库
     * @return 结果
     */
    public int insertAppChinesePoetryJson(AppChinesePoetryJson appChinesePoetryJson);

    /**
     * 修改提供JSON完整数据,预留换JSON库
     * 
     * @param appChinesePoetryJson 提供JSON完整数据,预留换JSON库
     * @return 结果
     */
    public int updateAppChinesePoetryJson(AppChinesePoetryJson appChinesePoetryJson);

    /**
     * 批量删除提供JSON完整数据,预留换JSON库
     * 
     * @param ids 需要删除的提供JSON完整数据,预留换JSON库主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryJsonByIds(Long[] ids);

    /**
     * 删除提供JSON完整数据,预留换JSON库信息
     * 
     * @param id 提供JSON完整数据,预留换JSON库主键
     * @return 结果
     */
    public int deleteAppChinesePoetryJsonById(Long id);
}
