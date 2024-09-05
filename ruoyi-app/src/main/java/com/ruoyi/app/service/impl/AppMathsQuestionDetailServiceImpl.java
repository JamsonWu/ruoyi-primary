package com.ruoyi.app.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppMathsQuestionDetailMapper;
import com.ruoyi.app.domain.AppMathsQuestionDetail;
import com.ruoyi.app.service.IAppMathsQuestionDetailService;

/**
 * 数学错题明细Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class AppMathsQuestionDetailServiceImpl implements IAppMathsQuestionDetailService 
{
    @Autowired
    private AppMathsQuestionDetailMapper appMathsQuestionDetailMapper;

    /**
     * 查询数学错题明细
     * 
     * @param id 数学错题明细主键
     * @return 数学错题明细
     */
    @Override
    public AppMathsQuestionDetail selectAppMathsQuestionDetailById(Long id)
    {
        return appMathsQuestionDetailMapper.selectAppMathsQuestionDetailById(id);
    }

    /**
     * 查询数学错题明细列表
     * 
     * @param appMathsQuestionDetail 数学错题明细
     * @return 数学错题明细
     */
    @Override
    public List<AppMathsQuestionDetail> selectAppMathsQuestionDetailList(AppMathsQuestionDetail appMathsQuestionDetail)
    {
        return appMathsQuestionDetailMapper.selectAppMathsQuestionDetailList(appMathsQuestionDetail);
    }

    /**
     * 新增数学错题明细
     * 
     * @param appMathsQuestionDetail 数学错题明细
     * @return 结果
     */
    @Override
    public int insertAppMathsQuestionDetail(AppMathsQuestionDetail appMathsQuestionDetail)
    {
        return appMathsQuestionDetailMapper.insertAppMathsQuestionDetail(appMathsQuestionDetail);
    }

    /**
     * 修改数学错题明细
     * 
     * @param appMathsQuestionDetail 数学错题明细
     * @return 结果
     */
    @Override
    public int updateAppMathsQuestionDetail(AppMathsQuestionDetail appMathsQuestionDetail)
    {
        return appMathsQuestionDetailMapper.updateAppMathsQuestionDetail(appMathsQuestionDetail);
    }

    /**
     * 批量删除数学错题明细
     * 
     * @param ids 需要删除的数学错题明细主键
     * @return 结果
     */
    @Override
    public int deleteAppMathsQuestionDetailByIds(Long[] ids)
    {
        return appMathsQuestionDetailMapper.deleteAppMathsQuestionDetailByIds(ids);
    }

    /**
     * 删除数学错题明细信息
     * 
     * @param id 数学错题明细主键
     * @return 结果
     */
    @Override
    public int deleteAppMathsQuestionDetailById(Long id)
    {
        return appMathsQuestionDetailMapper.deleteAppMathsQuestionDetailById(id);
    }
}
