package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppMathsQuestion;

/**
 * 数学错题主Service接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface IAppMathsQuestionService 
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
     * 批量删除数学错题主
     * 
     * @param ids 需要删除的数学错题主主键集合
     * @return 结果
     */
    public int deleteAppMathsQuestionByIds(Long[] ids);

    /**
     * 删除数学错题主信息
     * 
     * @param id 数学错题主主键
     * @return 结果
     */
    public int deleteAppMathsQuestionById(Long id);
}
