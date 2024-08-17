package com.ruoyi.app.mapper;

import java.util.List;
import com.ruoyi.app.domain.AppChineseWordComment;

/**
 * 词语解释Mapper接口
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public interface AppChineseWordCommentMapper 
{
    /**
     * 查询词语解释
     * 
     * @param id 词语解释主键
     * @return 词语解释
     */
    public AppChineseWordComment selectAppChineseWordCommentById(Long id);

    /**
     * 查询词语解释列表
     * 
     * @param appChineseWordComment 词语解释
     * @return 词语解释集合
     */
    public List<AppChineseWordComment> selectAppChineseWordCommentList(AppChineseWordComment appChineseWordComment);

    /**
     * 新增词语解释
     * 
     * @param appChineseWordComment 词语解释
     * @return 结果
     */
    public int insertAppChineseWordComment(AppChineseWordComment appChineseWordComment);

    /**
     * 修改词语解释
     * 
     * @param appChineseWordComment 词语解释
     * @return 结果
     */
    public int updateAppChineseWordComment(AppChineseWordComment appChineseWordComment);

    /**
     * 删除词语解释
     * 
     * @param id 词语解释主键
     * @return 结果
     */
    public int deleteAppChineseWordCommentById(Long id);

    /**
     * 批量删除词语解释
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAppChineseWordCommentByIds(Long[] ids);
}
