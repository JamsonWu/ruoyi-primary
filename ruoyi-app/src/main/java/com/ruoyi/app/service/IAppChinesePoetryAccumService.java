package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetryAccum;

/**
 * 诗词与日积月累主Service接口
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
public interface IAppChinesePoetryAccumService 
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
     * 批量删除诗词与日积月累主
     * 
     * @param ids 需要删除的诗词与日积月累主主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryAccumByIds(Long[] ids);

    /**
     * 删除诗词与日积月累主信息
     * 
     * @param id 诗词与日积月累主主键
     * @return 结果
     */
    public int deleteAppChinesePoetryAccumById(Long id);
}
