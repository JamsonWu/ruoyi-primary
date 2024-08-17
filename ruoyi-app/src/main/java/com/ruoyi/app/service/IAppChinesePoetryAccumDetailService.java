package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetryAccumDetail;

/**
 * 诗词与日积月累明细Service接口
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
public interface IAppChinesePoetryAccumDetailService 
{
    /**
     * 查询诗词与日积月累明细
     * 
     * @param id 诗词与日积月累明细主键
     * @return 诗词与日积月累明细
     */
    public AppChinesePoetryAccumDetail selectAppChinesePoetryAccumDetailById(Long id);

    /**
     * 查询诗词与日积月累明细列表
     * 
     * @param appChinesePoetryAccumDetail 诗词与日积月累明细
     * @return 诗词与日积月累明细集合
     */
    public List<AppChinesePoetryAccumDetail> selectAppChinesePoetryAccumDetailList(AppChinesePoetryAccumDetail appChinesePoetryAccumDetail);

    /**
     * 新增诗词与日积月累明细
     * 
     * @param appChinesePoetryAccumDetail 诗词与日积月累明细
     * @return 结果
     */
    public int insertAppChinesePoetryAccumDetail(AppChinesePoetryAccumDetail appChinesePoetryAccumDetail);

    /**
     * 修改诗词与日积月累明细
     * 
     * @param appChinesePoetryAccumDetail 诗词与日积月累明细
     * @return 结果
     */
    public int updateAppChinesePoetryAccumDetail(AppChinesePoetryAccumDetail appChinesePoetryAccumDetail);

    /**
     * 批量删除诗词与日积月累明细
     * 
     * @param ids 需要删除的诗词与日积月累明细主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryAccumDetailByIds(Long[] ids);

    /**
     * 删除诗词与日积月累明细信息
     * 
     * @param id 诗词与日积月累明细主键
     * @return 结果
     */
    public int deleteAppChinesePoetryAccumDetailById(Long id);
}
