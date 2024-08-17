package com.ruoyi.app.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppChineseWordCommentMapper;
import com.ruoyi.app.domain.AppChineseWordComment;
import com.ruoyi.app.service.IAppChineseWordCommentService;

/**
 * 词语解释Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-21
 */
@Service
public class AppChineseWordCommentServiceImpl implements IAppChineseWordCommentService 
{
    @Autowired
    private AppChineseWordCommentMapper appChineseWordCommentMapper;

    /**
     * 查询词语解释
     * 
     * @param id 词语解释主键
     * @return 词语解释
     */
    @Override
    public AppChineseWordComment selectAppChineseWordCommentById(Long id)
    {
        return appChineseWordCommentMapper.selectAppChineseWordCommentById(id);
    }

    /**
     * 查询词语解释列表
     * 
     * @param appChineseWordComment 词语解释
     * @return 词语解释
     */
    @Override
    public List<AppChineseWordComment> selectAppChineseWordCommentList(AppChineseWordComment appChineseWordComment)
    {
        return appChineseWordCommentMapper.selectAppChineseWordCommentList(appChineseWordComment);
    }

    /**
     * 新增词语解释
     * 
     * @param appChineseWordComment 词语解释
     * @return 结果
     */
    @Override
    public int insertAppChineseWordComment(AppChineseWordComment appChineseWordComment)
    {
        return appChineseWordCommentMapper.insertAppChineseWordComment(appChineseWordComment);
    }

    /**
     * 修改词语解释
     * 
     * @param appChineseWordComment 词语解释
     * @return 结果
     */
    @Override
    public int updateAppChineseWordComment(AppChineseWordComment appChineseWordComment)
    {
        return appChineseWordCommentMapper.updateAppChineseWordComment(appChineseWordComment);
    }

    /**
     * 批量删除词语解释
     * 
     * @param ids 需要删除的词语解释主键
     * @return 结果
     */
    @Override
    public int deleteAppChineseWordCommentByIds(Long[] ids)
    {
        return appChineseWordCommentMapper.deleteAppChineseWordCommentByIds(ids);
    }

    /**
     * 删除词语解释信息
     * 
     * @param id 词语解释主键
     * @return 结果
     */
    @Override
    public int deleteAppChineseWordCommentById(Long id)
    {
        return appChineseWordCommentMapper.deleteAppChineseWordCommentById(id);
    }
}
