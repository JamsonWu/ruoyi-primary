package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppMathsQuestionMapper;
import com.ruoyi.app.domain.AppMathsQuestion;
import com.ruoyi.app.service.IAppMathsQuestionService;

/**
 * 数学错题主Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class AppMathsQuestionServiceImpl implements IAppMathsQuestionService 
{
    @Autowired
    private AppMathsQuestionMapper appMathsQuestionMapper;

    /**
     * 查询数学错题主
     * 
     * @param id 数学错题主主键
     * @return 数学错题主
     */
    @Override
    public AppMathsQuestion selectAppMathsQuestionById(Long id)
    {
        return appMathsQuestionMapper.selectAppMathsQuestionById(id);
    }

    /**
     * 查询数学错题主列表
     * 
     * @param appMathsQuestion 数学错题主
     * @return 数学错题主
     */
    @Override
    public List<AppMathsQuestion> selectAppMathsQuestionList(AppMathsQuestion appMathsQuestion)
    {
        return appMathsQuestionMapper.selectAppMathsQuestionList(appMathsQuestion);
    }

    /**
     * 新增数学错题主
     * 
     * @param appMathsQuestion 数学错题主
     * @return 结果
     */
    @Override
    public int insertAppMathsQuestion(AppMathsQuestion appMathsQuestion)
    {
        appMathsQuestion.setQuestionDate(DateUtils.getDate());
        return appMathsQuestionMapper.insertAppMathsQuestion(appMathsQuestion);
    }

    /**
     * 修改数学错题主
     * 
     * @param appMathsQuestion 数学错题主
     * @return 结果
     */
    @Override
    public int updateAppMathsQuestion(AppMathsQuestion appMathsQuestion)
    {
        return appMathsQuestionMapper.updateAppMathsQuestion(appMathsQuestion);
    }

    /**
     * 批量删除数学错题主
     * 
     * @param ids 需要删除的数学错题主主键
     * @return 结果
     */
    @Override
    public int deleteAppMathsQuestionByIds(Long[] ids)
    {
        return appMathsQuestionMapper.deleteAppMathsQuestionByIds(ids);
    }

    /**
     * 删除数学错题主信息
     * 
     * @param id 数学错题主主键
     * @return 结果
     */
    @Override
    public int deleteAppMathsQuestionById(Long id)
    {
        return appMathsQuestionMapper.deleteAppMathsQuestionById(id);
    }
}
