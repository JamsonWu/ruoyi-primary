package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppEnglishQuestion;

/**
 * 英语错题主Mapper接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface AppEnglishQuestionMapper 
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
     * 删除英语错题主
     * 
     * @param id 英语错题主主键
     * @return 结果
     */
    public int deleteAppEnglishQuestionById(Long id);

    /**
     * 批量删除英语错题主
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppEnglishQuestionByIds(Long[] ids);
}
