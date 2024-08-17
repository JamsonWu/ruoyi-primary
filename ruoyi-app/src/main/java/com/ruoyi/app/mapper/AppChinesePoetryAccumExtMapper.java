package com.ruoyi.app.mapper;

import com.ruoyi.app.domain.AppChinesePoetryAccum;
import com.ruoyi.app.domain.AppChinesePoetryExt;

import java.util.List;


public interface AppChinesePoetryAccumExtMapper
{
    public List<AppChinesePoetryAccum> selectAppChinesePoetryAccumListBySysId(List<Long> list);
    public List<AppChinesePoetryExt>  selectAppChinesePoetryListByAccumDetail(AppChinesePoetryExt appChinesePoetryExt);

    public AppChinesePoetryAccum selectAppChinesePoetryAccumBySysId(Long sysId);
}
