package com.ruoyi.web.controller.app;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.app.domain.AppEnglishQuestion;
import com.ruoyi.app.service.IAppEnglishQuestionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 英语错题主Controller
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@RestController
@RequestMapping("/english/question")
public class AppEnglishQuestionController extends BaseController
{
    @Autowired
    private IAppEnglishQuestionService appEnglishQuestionService;

    /**
     * 查询英语错题主列表
     */
    @PreAuthorize("@ss.hasPermi('english:question:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppEnglishQuestion appEnglishQuestion)
    {
        startPage();
        List<AppEnglishQuestion> list = appEnglishQuestionService.selectAppEnglishQuestionList(appEnglishQuestion);
        return getDataTable(list);
    }

    /**
     * 导出英语错题主列表
     */
    @PreAuthorize("@ss.hasPermi('english:question:export')")
    @Log(title = "英语错题主", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppEnglishQuestion appEnglishQuestion)
    {
        List<AppEnglishQuestion> list = appEnglishQuestionService.selectAppEnglishQuestionList(appEnglishQuestion);
        ExcelUtil<AppEnglishQuestion> util = new ExcelUtil<AppEnglishQuestion>(AppEnglishQuestion.class);
        util.exportExcel(response, list, "英语错题主数据");
    }

    /**
     * 获取英语错题主详细信息
     */
    @PreAuthorize("@ss.hasPermi('english:question:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(appEnglishQuestionService.selectAppEnglishQuestionById(id));
    }

    /**
     * 新增英语错题主
     */
    @PreAuthorize("@ss.hasPermi('english:question:add')")
    @Log(title = "英语错题主", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppEnglishQuestion appEnglishQuestion)
    {
        // 保存用户ID
        appEnglishQuestion.setUserId(getUserId());
        return toAjax(appEnglishQuestionService.insertAppEnglishQuestion(appEnglishQuestion));
    }

    /**
     * 修改英语错题主
     */
    @PreAuthorize("@ss.hasPermi('english:question:edit')")
    @Log(title = "英语错题主", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppEnglishQuestion appEnglishQuestion)
    {
        return toAjax(appEnglishQuestionService.updateAppEnglishQuestion(appEnglishQuestion));
    }

    /**
     * 删除英语错题主
     */
    @PreAuthorize("@ss.hasPermi('english:question:remove')")
    @Log(title = "英语错题主", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(appEnglishQuestionService.deleteAppEnglishQuestionByIds(ids));
    }
}
