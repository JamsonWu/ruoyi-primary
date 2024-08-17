package com.ruoyi.app.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppMathsConceptMapper;
import com.ruoyi.app.domain.AppMathsConcept;
import com.ruoyi.app.service.IAppMathsConceptService;

/**
 * 数学概念Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
@Service
public class AppMathsConceptServiceImpl implements IAppMathsConceptService 
{
    @Autowired
    private AppMathsConceptMapper appMathsConceptMapper;

    /**
     * 查询数学概念
     * 
     * @param id 数学概念主键
     * @return 数学概念
     */
    @Override
    public AppMathsConcept selectAppMathsConceptById(Long id)
    {
        return appMathsConceptMapper.selectAppMathsConceptById(id);
    }

    /**
     * 查询数学概念列表
     * 
     * @param appMathsConcept 数学概念
     * @return 数学概念
     */
    @Override
    public List<AppMathsConcept> selectAppMathsConceptList(AppMathsConcept appMathsConcept)
    {
        return appMathsConceptMapper.selectAppMathsConceptList(appMathsConcept);
    }

    /**
     * 新增数学概念
     * 
     * @param appMathsConcept 数学概念
     * @return 结果
     */
    @Override
    public int insertAppMathsConcept(AppMathsConcept appMathsConcept)
    {
        appMathsConcept.setCreateTime(DateUtils.getNowDate());
        return appMathsConceptMapper.insertAppMathsConcept(appMathsConcept);
    }

    /**
     * 修改数学概念
     * 
     * @param appMathsConcept 数学概念
     * @return 结果
     */
    @Override
    public int updateAppMathsConcept(AppMathsConcept appMathsConcept)
    {
        appMathsConcept.setUpdateTime(DateUtils.getNowDate());
        return appMathsConceptMapper.updateAppMathsConcept(appMathsConcept);
    }

    /**
     * 批量删除数学概念
     * 
     * @param ids 需要删除的数学概念主键
     * @return 结果
     */
    @Override
    public int deleteAppMathsConceptByIds(Long[] ids)
    {
        return appMathsConceptMapper.deleteAppMathsConceptByIds(ids);
    }

    /**
     * 删除数学概念信息
     * 
     * @param id 数学概念主键
     * @return 结果
     */
    @Override
    public int deleteAppMathsConceptById(Long id)
    {
        return appMathsConceptMapper.deleteAppMathsConceptById(id);
    }
}
