package com.ruoyi.app.service.impl;

import java.util.List;

import com.ruoyi.app.mapper.AppChineseExtMapper;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.app.mapper.AppChineseMapper;
import com.ruoyi.app.domain.AppChinese;
import com.ruoyi.app.service.IAppChineseService;

/**
 * 语文词语Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-05-14
 */
@Service
public class AppChineseServiceImpl implements IAppChineseService 
{
    @Autowired
    private AppChineseMapper appChineseMapper;
    @Autowired
    private AppChineseExtMapper appChineseExtMapper;

    /**
     * 查询语文词语
     * 
     * @param id 语文词语主键
     * @return 语文词语
     */
    @Override
    public AppChinese selectAppChineseById(Integer id)
    {
        return appChineseMapper.selectAppChineseById(id);
    }


    /**
     * 查询语文词语列表
     * 
     * @param appChinese 语文词语
     * @return 语文词语
     */
    @Override
    public List<AppChinese> selectAppChineseList(AppChinese appChinese)
    {
        return appChineseMapper.selectAppChineseList(appChinese);
    }

    /**
     * 新增语文词语
     * 
     * @param appChinese 语文词语
     * @return 结果
     */
    @Override
    public int insertAppChinese(AppChinese appChinese){
        AppChinese appChineseOld = appChineseExtMapper.selectAppChineseByWord(appChinese.getWord());
        if (StringUtils.isNotNull(appChineseOld)) {
            appChineseOld.setPinyin(appChinese.getPinyin());
//            BeanUtils.copyProperties(appChinese,appChineseOld,"id","createBy","createTime");
          return  appChineseMapper.updateAppChinese(appChineseOld);
        }
        else {
            return appChineseMapper.insertAppChinese(appChinese);
        }
    }

    /**
     * 修改语文词语
     * 
     * @param appChinese 语文词语
     * @return 结果
     */
    @Override
    public int updateAppChinese(AppChinese appChinese)
    {
        return appChineseMapper.updateAppChinese(appChinese);
    }

    /**
     * 批量删除语文词语
     * 
     * @param ids 需要删除的语文词语主键
     * @return 结果
     */
    @Override
    public int deleteAppChineseByIds(Integer[] ids)
    {
        return appChineseMapper.deleteAppChineseByIds(ids);
    }

    /**
     * 删除语文词语信息
     * 
     * @param id 语文词语主键
     * @return 结果
     */
    @Override
    public int deleteAppChineseById(Integer id)
    {
        return appChineseMapper.deleteAppChineseById(id);
    }
}
