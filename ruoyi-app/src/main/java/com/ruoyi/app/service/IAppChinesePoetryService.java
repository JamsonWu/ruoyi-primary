package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppChinesePoetry;
import com.ruoyi.app.domain.AppChinesePoetryAccum;
import com.ruoyi.app.domain.AppChinesePoetryAccumDetail;
import com.ruoyi.app.domain.AppChinesePoetryExt;

/**
 * 诗与词Service接口
 * 
 * @author ruoyi
 * @date 2024-05-21
 */
public interface IAppChinesePoetryService 
{
    /**
     * 查询诗与词
     * 
     * @param id 诗与词主键
     * @return 诗与词
     */
    public AppChinesePoetry selectAppChinesePoetryById(Long id);

    /**
     * 查询诗与词列表
     * 
     * @param appChinesePoetry 诗与词
     * @return 诗与词集合
     */
    public List<AppChinesePoetryExt> selectAppChinesePoetryList(AppChinesePoetryExt appChinesePoetry);

    /**
     * 新增诗与词
     * 
     * @param appChinesePoetry 诗与词
     * @return 结果
     */
    public int insertAppChinesePoetry(AppChinesePoetry appChinesePoetry);

    /**
     * 修改诗与词
     * 
     * @param appChinesePoetry 诗与词
     * @return 结果
     */
    public int updateAppChinesePoetry(AppChinesePoetryExt appChinesePoetry);

    /**
     * 批量删除诗与词
     * 
     * @param ids 需要删除的诗与词主键集合
     * @return 结果
     */
    public int deleteAppChinesePoetryByIds(Long[] ids);

    /**
     * 删除诗与词信息
     * 
     * @param id 诗与词主键
     * @return 结果
     */
    public int deleteAppChinesePoetryById(Long id);

    public List<AppChinesePoetryAccum> selectAppChinesePoetryAccumListBySysId(List<Long> list);

    public List<AppChinesePoetryAccumDetail> selectAppChinesePoetryAccumDetailListBySysId(List<Long> list);
}
