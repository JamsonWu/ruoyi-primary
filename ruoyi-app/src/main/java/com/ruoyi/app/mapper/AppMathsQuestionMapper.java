package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppMathsQuestion;

/**
 * 数学错题主Mapper接口
 * 
 * @author ruoyi
 * @date 2024-09-06
 */
public interface AppMathsQuestionMapper 
{
    /**
     * 查询数学错题主
     * 
     * @param id 数学错题主主键
     * @return 数学错题主
     */
    public AppMathsQuestion selectAppMathsQuestionById(Long id);

    /**
     * 查询数学错题主列表
     * 
     * @param appMathsQuestion 数学错题主
     * @return 数学错题主集合
     */
    public List<AppMathsQuestion> selectAppMathsQuestionList(AppMathsQuestion appMathsQuestion);

    /**
     * 新增数学错题主
     * 
     * @param appMathsQuestion 数学错题主
     * @return 结果
     */
    public int insertAppMathsQuestion(AppMathsQuestion appMathsQuestion);

    /**
     * 修改数学错题主
     * 
     * @param appMathsQuestion 数学错题主
     * @return 结果
     */
    public int updateAppMathsQuestion(AppMathsQuestion appMathsQuestion);

    /**
     * 删除数学错题主
     * 
     * @param id 数学错题主主键
     * @return 结果
     */
    public int deleteAppMathsQuestionById(Long id);

    /**
     * 批量删除数学错题主
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppMathsQuestionByIds(Long[] ids);
}
