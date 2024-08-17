package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetryDetail;

/**
 * 诗词明细Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
public interface AppChinesePoetryDetailMapper 
{
    /**
     * 查询诗词明细
     * 
     * @param id 诗词明细主键
     * @return 诗词明细
     */
    public AppChinesePoetryDetail selectAppChinesePoetryDetailById(Long id);

    /**
     * 查询诗词明细列表
     * 
     * @param appChinesePoetryDetail 诗词明细
     * @return 诗词明细集合
     */
    public List<AppChinesePoetryDetail> selectAppChinesePoetryDetailList(AppChinesePoetryDetail appChinesePoetryDetail);

    /**
     * 新增诗词明细
     * 
     * @param appChinesePoetryDetail 诗词明细
     * @return 结果
     */
    public int insertAppChinesePoetryDetail(AppChinesePoetryDetail appChinesePoetryDetail);

    /**
     * 修改诗词明细
     * 
     * @param appChinesePoetryDetail 诗词明细
     * @return 结果
     */
    public int updateAppChinesePoetryDetail(AppChinesePoetryDetail appChinesePoetryDetail);

    /**
     * 删除诗词明细
     * 
     * @param id 诗词明细主键
     * @return 结果
     */
    public int deleteAppChinesePoetryDetailById(Long id);

    /**
     * 批量删除诗词明细
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryDetailByIds(Long[] ids);
}
