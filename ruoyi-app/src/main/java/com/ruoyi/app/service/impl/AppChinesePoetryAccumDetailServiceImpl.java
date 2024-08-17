package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppChinesePoetryAccumDetailMapper;
import com.ruoyi.app.domain.AppChinesePoetryAccumDetail;
import com.ruoyi.app.service.IAppChinesePoetryAccumDetailService;

/**
 * 诗词与日积月累明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
@Service
public class AppChinesePoetryAccumDetailServiceImpl implements IAppChinesePoetryAccumDetailService 
{
    @Autowired
    private AppChinesePoetryAccumDetailMapper appChinesePoetryAccumDetailMapper;

    /**
     * 查询诗词与日积月累明细
     * 
     * @param id 诗词与日积月累明细主键
     * @return 诗词与日积月累明细
     */
    @Override
    public AppChinesePoetryAccumDetail selectAppChinesePoetryAccumDetailById(Long id)
    {
        return appChinesePoetryAccumDetailMapper.selectAppChinesePoetryAccumDetailById(id);
    }

    /**
     * 查询诗词与日积月累明细列表
     * 
     * @param appChinesePoetryAccumDetail 诗词与日积月累明细
     * @return 诗词与日积月累明细
     */
    @Override
    public List<AppChinesePoetryAccumDetail> selectAppChinesePoetryAccumDetailList(AppChinesePoetryAccumDetail appChinesePoetryAccumDetail)
    {
        return appChinesePoetryAccumDetailMapper.selectAppChinesePoetryAccumDetailList(appChinesePoetryAccumDetail);
    }

    /**
     * 新增诗词与日积月累明细
     * 
     * @param appChinesePoetryAccumDetail 诗词与日积月累明细
     * @return 结果
     */
    @Override
    public int insertAppChinesePoetryAccumDetail(AppChinesePoetryAccumDetail appChinesePoetryAccumDetail)
    {
        appChinesePoetryAccumDetail.setCreateTime(DateUtils.getNowDate());
        return appChinesePoetryAccumDetailMapper.insertAppChinesePoetryAccumDetail(appChinesePoetryAccumDetail);
    }

    /**
     * 修改诗词与日积月累明细
     * 
     * @param appChinesePoetryAccumDetail 诗词与日积月累明细
     * @return 结果
     */
    @Override
    public int updateAppChinesePoetryAccumDetail(AppChinesePoetryAccumDetail appChinesePoetryAccumDetail)
    {
        appChinesePoetryAccumDetail.setUpdateTime(DateUtils.getNowDate());
        return appChinesePoetryAccumDetailMapper.updateAppChinesePoetryAccumDetail(appChinesePoetryAccumDetail);
    }

    /**
     * 批量删除诗词与日积月累明细
     * 
     * @param ids 需要删除的诗词与日积月累明细主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryAccumDetailByIds(Long[] ids)
    {
        return appChinesePoetryAccumDetailMapper.deleteAppChinesePoetryAccumDetailByIds(ids);
    }

    /**
     * 删除诗词与日积月累明细信息
     * 
     * @param id 诗词与日积月累明细主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryAccumDetailById(Long id)
    {
        return appChinesePoetryAccumDetailMapper.deleteAppChinesePoetryAccumDetailById(id);
    }
}
