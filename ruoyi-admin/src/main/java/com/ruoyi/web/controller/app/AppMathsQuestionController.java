package com.ruoyi.web.controller.app;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.config.RuoYiConfig;
import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.file.FileUploadUtils;
import com.ruoyi.common.utils.file.MimeTypeUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.app.domain.AppMathsQuestion;
import com.ruoyi.app.service.IAppMathsQuestionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 数学错题主Controller
 * 
 * @author ruoyi
 * @date 2024-09-06
 */
@RestController
@RequestMapping("/maths/question")
public class AppMathsQuestionController extends BaseController
{
    @Autowired
    private IAppMathsQuestionService appMathsQuestionService;

    /**
     * 查询数学错题主列表
     */
    @PreAuthorize("@ss.hasPermi('maths:question:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppMathsQuestion appMathsQuestion)
    {
        startPage();
        List<AppMathsQuestion> list = appMathsQuestionService.selectAppMathsQuestionList(appMathsQuestion);
        return getDataTable(list);
    }

    /**
     * 导出数学错题主列表
     */
    @PreAuthorize("@ss.hasPermi('maths:question:export')")
    @Log(title = "数学错题主", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppMathsQuestion appMathsQuestion)
    {
        List<AppMathsQuestion> list = appMathsQuestionService.selectAppMathsQuestionList(appMathsQuestion);
        ExcelUtil<AppMathsQuestion> util = new ExcelUtil<AppMathsQuestion>(AppMathsQuestion.class);
        util.exportExcel(response, list, "数学错题主数据");
    }

    /**
     * 获取数学错题主详细信息
     */
    @PreAuthorize("@ss.hasPermi('maths:question:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(appMathsQuestionService.selectAppMathsQuestionById(id));
    }

    /**
     * 新增数学错题主
     */
    @PreAuthorize("@ss.hasPermi('maths:question:add')")
    @Log(title = "数学错题主", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppMathsQuestion appMathsQuestion)
    {
        appMathsQuestion.setUserId(getUserId());
        return toAjax(appMathsQuestionService.insertAppMathsQuestion(appMathsQuestion));
    }

    /**
     * 修改数学错题主
     */
    @PreAuthorize("@ss.hasPermi('maths:question:edit')")
    @Log(title = "数学错题主", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppMathsQuestion appMathsQuestion)
    {
        return toAjax(appMathsQuestionService.updateAppMathsQuestion(appMathsQuestion));
    }

    /**
     * 删除数学错题主
     */
    @PreAuthorize("@ss.hasPermi('maths:question:remove')")
    @Log(title = "数学错题主", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(appMathsQuestionService.deleteAppMathsQuestionByIds(ids));
    }


    /**
     * 上传数学解答图片
     */
    @Log(title = "解答问题", businessType = BusinessType.UPDATE)
    @PostMapping("/answer")
    public AjaxResult avatar(@RequestParam("answerfile") MultipartFile file) throws Exception
    {
        if (!file.isEmpty())
        {
            String answerImgUrl = FileUploadUtils.upload(RuoYiConfig.getMathsQuestionAnswerPath(), file, MimeTypeUtils.IMAGE_EXTENSION);
            AjaxResult ajax = AjaxResult.success();
            ajax.put("imgUrl", answerImgUrl);
            return ajax;
        }
        return error("上传图片异常，请联系管理员");
    }
}
