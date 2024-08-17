package com.ruoyi.app.mapper;

import com.ruoyi.app.domain.AppChinesePoetryJson;

public interface AppChinesePoetryJsonExtMapper
{
    public AppChinesePoetryJson selectAppChinesePoetryJsonBySysId(Long sysId);
    /**
     * 添加前先删除旧的
     * @param sysId
     * @return
     */
    public int deleteAppChinesePoetryJsonBySysId(Long sysId);

    /**
     * 删除汇总表关联数据
     * @param sysId
     * @return
     */
    public int deleteAppChinesePoetryBySysId(Long sysId);

    /**
     * 删除主表数据
     * @param sysId
     * @return
     */
    public int deleteAppChinesePoetryAccumBySysId(Long sysId);

    /**
     * 删除明细表数据
     * @param sysId
     * @return
     */
    public int deleteAppChinesePoetryAccumDetailBySysId(Long sysId);

}
