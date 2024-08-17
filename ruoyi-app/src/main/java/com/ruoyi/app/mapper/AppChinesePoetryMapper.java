package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetry;

/**
 * 诗词与日积月累汇总Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppChinesePoetryMapper 
{
    /**
     * 查询诗词与日积月累汇总
     * 
     * @param id 诗词与日积月累汇总主键
     * @return 诗词与日积月累汇总
     */
    public AppChinesePoetry selectAppChinesePoetryById(Long id);

    /**
     * 查询诗词与日积月累汇总列表
     * 
     * @param appChinesePoetry 诗词与日积月累汇总
     * @return 诗词与日积月累汇总集合
     */
    public List<AppChinesePoetry> selectAppChinesePoetryList(AppChinesePoetry appChinesePoetry);

    /**
     * 新增诗词与日积月累汇总
     * 
     * @param appChinesePoetry 诗词与日积月累汇总
     * @return 结果
     */
    public int insertAppChinesePoetry(AppChinesePoetry appChinesePoetry);

    /**
     * 修改诗词与日积月累汇总
     * 
     * @param appChinesePoetry 诗词与日积月累汇总
     * @return 结果
     */
    public int updateAppChinesePoetry(AppChinesePoetry appChinesePoetry);

    /**
     * 删除诗词与日积月累汇总
     * 
     * @param id 诗词与日积月累汇总主键
     * @return 结果
     */
    public int deleteAppChinesePoetryById(Long id);

    /**
     * 批量删除诗词与日积月累汇总
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryByIds(Long[] ids);
}
