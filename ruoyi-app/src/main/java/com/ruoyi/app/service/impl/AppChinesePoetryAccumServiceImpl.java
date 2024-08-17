package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppChinesePoetryAccumMapper;
import com.ruoyi.app.domain.AppChinesePoetryAccum;
import com.ruoyi.app.service.IAppChinesePoetryAccumService;

/**
 * 诗词与日积月累主Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
@Service
public class AppChinesePoetryAccumServiceImpl implements IAppChinesePoetryAccumService 
{
    @Autowired
    private AppChinesePoetryAccumMapper appChinesePoetryAccumMapper;

    /**
     * 查询诗词与日积月累主
     * 
     * @param id 诗词与日积月累主主键
     * @return 诗词与日积月累主
     */
    @Override
    public AppChinesePoetryAccum selectAppChinesePoetryAccumById(Long id)
    {
        return appChinesePoetryAccumMapper.selectAppChinesePoetryAccumById(id);
    }

    /**
     * 查询诗词与日积月累主列表
     * 
     * @param appChinesePoetryAccum 诗词与日积月累主
     * @return 诗词与日积月累主
     */
    @Override
    public List<AppChinesePoetryAccum> selectAppChinesePoetryAccumList(AppChinesePoetryAccum appChinesePoetryAccum)
    {
        return appChinesePoetryAccumMapper.selectAppChinesePoetryAccumList(appChinesePoetryAccum);
    }

    /**
     * 新增诗词与日积月累主
     * 
     * @param appChinesePoetryAccum 诗词与日积月累主
     * @return 结果
     */
    @Override
    public int insertAppChinesePoetryAccum(AppChinesePoetryAccum appChinesePoetryAccum)
    {
        appChinesePoetryAccum.setCreateTime(DateUtils.getNowDate());
        return appChinesePoetryAccumMapper.insertAppChinesePoetryAccum(appChinesePoetryAccum);
    }

    /**
     * 修改诗词与日积月累主
     * 
     * @param appChinesePoetryAccum 诗词与日积月累主
     * @return 结果
     */
    @Override
    public int updateAppChinesePoetryAccum(AppChinesePoetryAccum appChinesePoetryAccum)
    {
        appChinesePoetryAccum.setUpdateTime(DateUtils.getNowDate());
        return appChinesePoetryAccumMapper.updateAppChinesePoetryAccum(appChinesePoetryAccum);
    }

    /**
     * 批量删除诗词与日积月累主
     * 
     * @param ids 需要删除的诗词与日积月累主主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryAccumByIds(Long[] ids)
    {
        return appChinesePoetryAccumMapper.deleteAppChinesePoetryAccumByIds(ids);
    }

    /**
     * 删除诗词与日积月累主信息
     * 
     * @param id 诗词与日积月累主主键
     * @return 结果
     */
    @Override
    public int deleteAppChinesePoetryAccumById(Long id)
    {
        return appChinesePoetryAccumMapper.deleteAppChinesePoetryAccumById(id);
    }
}
