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
import com.ruoyi.app.domain.AppMathsQuestionDetail;
import com.ruoyi.app.service.IAppMathsQuestionDetailService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 数学错题明细Controller
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@RestController
@RequestMapping("/maths/questiondetail")
public class AppMathsQuestionDetailController extends BaseController
{
    @Autowired
    private IAppMathsQuestionDetailService appMathsQuestionDetailService;

    /**
     * 查询数学错题明细列表
     */
    @PreAuthorize("@ss.hasPermi('maths:questiondetail:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppMathsQuestionDetail appMathsQuestionDetail)
    {
        startPage();
        List<AppMathsQuestionDetail> list = appMathsQuestionDetailService.selectAppMathsQuestionDetailList(appMathsQuestionDetail);
        return getDataTable(list);
    }

    /**
     * 导出数学错题明细列表
     */
    @PreAuthorize("@ss.hasPermi('maths:questiondetail:export')")
    @Log(title = "数学错题明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppMathsQuestionDetail appMathsQuestionDetail)
    {
        List<AppMathsQuestionDetail> list = appMathsQuestionDetailService.selectAppMathsQuestionDetailList(appMathsQuestionDetail);
        ExcelUtil<AppMathsQuestionDetail> util = new ExcelUtil<AppMathsQuestionDetail>(AppMathsQuestionDetail.class);
        util.exportExcel(response, list, "数学错题明细数据");
    }

    /**
     * 获取数学错题明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('maths:questiondetail:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(appMathsQuestionDetailService.selectAppMathsQuestionDetailById(id));
    }

    /**
     * 新增数学错题明细
     */
    @PreAuthorize("@ss.hasPermi('maths:questiondetail:add')")
    @Log(title = "数学错题明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppMathsQuestionDetail appMathsQuestionDetail)
    {
        return toAjax(appMathsQuestionDetailService.insertAppMathsQuestionDetail(appMathsQuestionDetail));
    }

    /**
     * 修改数学错题明细
     */
    @PreAuthorize("@ss.hasPermi('maths:questiondetail:edit')")
    @Log(title = "数学错题明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppMathsQuestionDetail appMathsQuestionDetail)
    {
        return toAjax(appMathsQuestionDetailService.updateAppMathsQuestionDetail(appMathsQuestionDetail));
    }

    /**
     * 删除数学错题明细
     */
    @PreAuthorize("@ss.hasPermi('maths:questiondetail:remove')")
    @Log(title = "数学错题明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(appMathsQuestionDetailService.deleteAppMathsQuestionDetailByIds(ids));
    }
}
