package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppEnglishQuestionMapper;
import com.ruoyi.app.domain.AppEnglishQuestion;
import com.ruoyi.app.service.IAppEnglishQuestionService;

/**
 * 英语错题主Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class AppEnglishQuestionServiceImpl implements IAppEnglishQuestionService 
{
    @Autowired
    private AppEnglishQuestionMapper appEnglishQuestionMapper;

    /**
     * 查询英语错题主
     * 
     * @param id 英语错题主主键
     * @return 英语错题主
     */
    @Override
    public AppEnglishQuestion selectAppEnglishQuestionById(Long id)
    {
        return appEnglishQuestionMapper.selectAppEnglishQuestionById(id);
    }

    /**
     * 查询英语错题主列表
     * 
     * @param appEnglishQuestion 英语错题主
     * @return 英语错题主
     */
    @Override
    public List<AppEnglishQuestion> selectAppEnglishQuestionList(AppEnglishQuestion appEnglishQuestion)
    {
        return appEnglishQuestionMapper.selectAppEnglishQuestionList(appEnglishQuestion);
    }

    /**
     * 新增英语错题主
     * 
     * @param appEnglishQuestion 英语错题主
     * @return 结果
     */
    @Override
    public int insertAppEnglishQuestion(AppEnglishQuestion appEnglishQuestion)
    {
        appEnglishQuestion.setQuestionDate(DateUtils.getDate());
        return appEnglishQuestionMapper.insertAppEnglishQuestion(appEnglishQuestion);
    }

    /**
     * 修改英语错题主
     * 
     * @param appEnglishQuestion 英语错题主
     * @return 结果
     */
    @Override
    public int updateAppEnglishQuestion(AppEnglishQuestion appEnglishQuestion)
    {
        return appEnglishQuestionMapper.updateAppEnglishQuestion(appEnglishQuestion);
    }

    /**
     * 批量删除英语错题主
     * 
     * @param ids 需要删除的英语错题主主键
     * @return 结果
     */
    @Override
    public int deleteAppEnglishQuestionByIds(Long[] ids)
    {
        return appEnglishQuestionMapper.deleteAppEnglishQuestionByIds(ids);
    }

    /**
     * 删除英语错题主信息
     * 
     * @param id 英语错题主主键
     * @return 结果
     */
    @Override
    public int deleteAppEnglishQuestionById(Long id)
    {
        return appEnglishQuestionMapper.deleteAppEnglishQuestionById(id);
    }
}
