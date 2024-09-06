package com.ruoyi.app.service.impl;

/**
 * 数学错题主Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-06
 */
//@Service
//public class AppMathsQuestionExtServiceImpl implements IAppMathsQuestionExtService
//{
//    @Autowired
//    private AppMathsQuestionMapper appMathsQuestionMapper;
//    @Autowired
//    private AppMathsQuestionExtMapper appMathsQuestionExtMapper;
//    @Autowired
//    private AppMathsQuestionImageMapper appMathsQuestionImageMapper;
//
//    /**
//     * 查询数学错题主
//     *
//     * @param id 数学错题主主键
//     * @return 数学错题主
//     */
//    @Override
//    public AppMathsQuestionDTO selectAppMathsQuestionById(Long id)
//    {
//        return appMathsQuestionExtMapper.selectAppMathsQuestionById(id);
//    }
//
//    @Override
//    @Transactional
//    public int insertAppMathsQuestion(AppMathsQuestionDTO appMathsQuestion) {
//        appMathsQuestion.setQuestionId(SnowFlake.getSnowFlakeId());
//        AppMathsQuestionImage m = new AppMathsQuestionImage();
//        m.setpQuestionId(appMathsQuestion.getQuestionId());
//        m.setImgData(appMathsQuestion.getImgData());
//        appMathsQuestionImageMapper.insertAppMathsQuestionImage(m);
//        appMathsQuestion.setImgData("");
//        appMathsQuestion.setQuestionDate(DateUtils.getDate());
//        return appMathsQuestionMapper.insertAppMathsQuestion(appMathsQuestion);
//    }
//
//    @Override
//    public int updateAppMathsQuestion(AppMathsQuestionDTO appMathsQuestion) {
//        return appMathsQuestionMapper.updateAppMathsQuestion(appMathsQuestion);
//    }
//
//    /**
//     * 批量删除数学错题主
//     *
//     * @param ids 需要删除的数学错题主主键
//     * @return 结果
//     */
//    @Override
//    public int deleteAppMathsQuestionByIds(Long[] ids)
//    {
//        // 包含主从删除
//        return appMathsQuestionMapper.deleteAppMathsQuestionByIds(ids);
//    }
//
//    /**
//     * 删除数学错题主信息
//     *
//     * @param id 数学错题主主键
//     * @return 结果
//     */
//    @Override
//    public int deleteAppMathsQuestionById(Long id)
//    {
//        return appMathsQuestionMapper.deleteAppMathsQuestionById(id);
//    }
//}
