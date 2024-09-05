package com.ruoyi.app.service;

import java.util.List;
import com.ruoyi.app.domain.AppEnglishQuestion;

/**
 * 英语错题主Service接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface IAppEnglishQuestionService 
{
    /**
     * 查询英语错题主
     * 
     * @param id 英语错题主主键
     * @return 英语错题主
     */
    public AppEnglishQuestion selectAppEnglishQuestionById(Long id);

    /**
     * 查询英语错题主列表
     * 
     * @param appEnglishQuestion 英语错题主
     * @return 英语错题主集合
     */
    public List<AppEnglishQuestion> selectAppEnglishQuestionList(AppEnglishQuestion appEnglishQuestion);

    /**
     * 新增英语错题主
     * 
     * @param appEnglishQuestion 英语错题主
     * @return 结果
     */
    public int insertAppEnglishQuestion(AppEnglishQuestion appEnglishQuestion);

    /**
     * 修改英语错题主
     * 
     * @param appEnglishQuestion 英语错题主
     * @return 结果
     */
    public int updateAppEnglishQuestion(AppEnglishQuestion appEnglishQuestion);

    /**
     * 批量删除英语错题主
     * 
     * @param ids 需要删除的英语错题主主键集合
     * @return 结果
     */
    public int deleteAppEnglishQuestionByIds(Long[] ids);

    /**
     * 删除英语错题主信息
     * 
     * @param id 英语错题主主键
     * @return 结果
     */
    public int deleteAppEnglishQuestionById(Long id);
}
