package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppMathsConcept;

/**
 * 数学概念Mapper接口
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public interface AppMathsConceptMapper 
{
    /**
     * 查询数学概念
     * 
     * @param id 数学概念主键
     * @return 数学概念
     */
    public AppMathsConcept selectAppMathsConceptById(Long id);

    /**
     * 查询数学概念列表
     * 
     * @param appMathsConcept 数学概念
     * @return 数学概念集合
     */
    public List<AppMathsConcept> selectAppMathsConceptList(AppMathsConcept appMathsConcept);

    /**
     * 新增数学概念
     * 
     * @param appMathsConcept 数学概念
     * @return 结果
     */
    public int insertAppMathsConcept(AppMathsConcept appMathsConcept);

    /**
     * 修改数学概念
     * 
     * @param appMathsConcept 数学概念
     * @return 结果
     */
    public int updateAppMathsConcept(AppMathsConcept appMathsConcept);

    /**
     * 删除数学概念
     * 
     * @param id 数学概念主键
     * @return 结果
     */
    public int deleteAppMathsConceptById(Long id);

    /**
     * 批量删除数学概念
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppMathsConceptByIds(Long[] ids);
}
