package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppChinesePoetryDetailMapper;
import com.ruoyi.app.domain.AppChinesePoetryDetail;
import com.ruoyi.app.service.IAppChinesePoetryDetailService;

/**
 * 诗词明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
@Service
public class AppChinesePoetryDetailServiceImpl implements IAppChinesePoetryDetailService 
{
    @Autowired
    private AppChinesePoetryDetailMapper appChinesePoetryDetailMapper;

    /**
     * 查询诗词明细
     * 
     * @param id 诗词明细主键
     * @return 诗词明细
     */
    @Override
    public AppChinesePoetryDetail selectAppChinesePoetryDetailById(Long id)
    {
        return appChinesePoetryDetailMapper.selectAppChinesePoetryDetailById(id);
    }

    /**
     * 查询诗词明细列表
     * 
     * @param appChinesePoetryDetail 诗词明细
     * @return 诗词明细
     */
    @Override
    public List<AppChinesePoetryDetail> selectAppChinesePoetryDetailList(AppChinesePoetryDetail appChinesePoetryDetail)
    {
        return appChinesePoetryDetailMapper.selectAppChinesePoetryDetailList(appChinesePoetryDetail);
    }

    /**
     * 新增诗词明细
     * 
     * @param appChinesePoetryDetail 诗词明细
     * @return 结果
     */
    @Override
    public int insertAppChinesePoetryDetail(AppChinesePoetryDetail appChinesePoetryDetail)
    {
        appChinesePoetryDetail.setCreateTime(DateUtils.getNowDate());
        return appChinesePoetryDetailMapper.insertAppChinesePoetryDetail(appChinesePoetryDetail);
    }

    /**
     * 修改诗词明细
     * 
     * @param appChinesePoetryDetail 诗词明细
     * @return 结果
     */
    @Override
    public int updateAppChinesePoetryDetail(AppChinesePoetryDetail appChinesePoetryDetail)
    {
        appChinesePoetryDetail.setUpdateTime(DateUtils.getNowDate());
        return appChinesePoetryDetailMapper.updateAppChinesePoetryDetail(appChinesePoetryDetail);
    }

    /**
     * 批量删除诗词明细
     * 
     * @param ids 需要删除的诗词明细主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryDetailByIds(Long[] ids)
    {
        return appChinesePoetryDetailMapper.deleteAppChinesePoetryDetailByIds(ids);
    }

    /**
     * 删除诗词明细信息
     * 
     * @param id 诗词明细主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryDetailById(Long id)
    {
        return appChinesePoetryDetailMapper.deleteAppChinesePoetryDetailById(id);
    }
}
