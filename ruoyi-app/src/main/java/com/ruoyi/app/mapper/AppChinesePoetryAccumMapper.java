package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetryAccum;

/**
 * 诗词与日积月累主Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppChinesePoetryAccumMapper 
{
    /**
     * 查询诗词与日积月累主
     * 
     * @param id 诗词与日积月累主主键
     * @return 诗词与日积月累主
     */
    public AppChinesePoetryAccum selectAppChinesePoetryAccumById(Long id);

    /**
     * 查询诗词与日积月累主列表
     * 
     * @param appChinesePoetryAccum 诗词与日积月累主
     * @return 诗词与日积月累主集合
     */
    public List<AppChinesePoetryAccum> selectAppChinesePoetryAccumList(AppChinesePoetryAccum appChinesePoetryAccum);

    /**
     * 新增诗词与日积月累主
     * 
     * @param appChinesePoetryAccum 诗词与日积月累主
     * @return 结果
     */
    public int insertAppChinesePoetryAccum(AppChinesePoetryAccum appChinesePoetryAccum);

    /**
     * 修改诗词与日积月累主
     * 
     * @param appChinesePoetryAccum 诗词与日积月累主
     * @return 结果
     */
    public int updateAppChinesePoetryAccum(AppChinesePoetryAccum appChinesePoetryAccum);

    /**
     * 删除诗词与日积月累主
     * 
     * @param id 诗词与日积月累主主键
     * @return 结果
     */
    public int deleteAppChinesePoetryAccumById(Long id);

    /**
     * 批量删除诗词与日积月累主
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryAccumByIds(Long[] ids);
}
