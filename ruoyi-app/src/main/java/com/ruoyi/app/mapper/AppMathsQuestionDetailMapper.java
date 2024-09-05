package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppMathsQuestionDetail;

/**
 * 数学错题明细Mapper接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface AppMathsQuestionDetailMapper 
{
    /**
     * 查询数学错题明细
     * 
     * @param id 数学错题明细主键
     * @return 数学错题明细
     */
    public AppMathsQuestionDetail selectAppMathsQuestionDetailById(Long id);

    /**
     * 查询数学错题明细列表
     * 
     * @param appMathsQuestionDetail 数学错题明细
     * @return 数学错题明细集合
     */
    public List<AppMathsQuestionDetail> selectAppMathsQuestionDetailList(AppMathsQuestionDetail appMathsQuestionDetail);

    /**
     * 新增数学错题明细
     * 
     * @param appMathsQuestionDetail 数学错题明细
     * @return 结果
     */
    public int insertAppMathsQuestionDetail(AppMathsQuestionDetail appMathsQuestionDetail);

    /**
     * 修改数学错题明细
     * 
     * @param appMathsQuestionDetail 数学错题明细
     * @return 结果
     */
    public int updateAppMathsQuestionDetail(AppMathsQuestionDetail appMathsQuestionDetail);

    /**
     * 删除数学错题明细
     * 
     * @param id 数学错题明细主键
     * @return 结果
     */
    public int deleteAppMathsQuestionDetailById(Long id);

    /**
     * 批量删除数学错题明细
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppMathsQuestionDetailByIds(Long[] ids);
}
