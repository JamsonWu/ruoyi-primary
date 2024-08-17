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
import com.ruoyi.app.domain.AppChinesePoetryDetail;
import com.ruoyi.app.service.IAppChinesePoetryDetailService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 诗词明细Controller
 * 
 * @author ruoyi
 * @date 2024-05-23
 */
@RestController
@RequestMapping("/app/detail")
public class AppChinesePoetryDetailController extends BaseController
{
    @Autowired
    private IAppChinesePoetryDetailService appChinesePoetryDetailService;

    /**
     * 查询诗词明细列表
     */
    @PreAuthorize("@ss.hasPermi('app:detail:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppChinesePoetryDetail appChinesePoetryDetail)
    {
        startPage();
        List<AppChinesePoetryDetail> list = appChinesePoetryDetailService.selectAppChinesePoetryDetailList(appChinesePoetryDetail);
        return getDataTable(list);
    }

    /**
     * 导出诗词明细列表
     */
    @PreAuthorize("@ss.hasPermi('app:detail:export')")
    @Log(title = "诗词明细", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppChinesePoetryDetail appChinesePoetryDetail)
    {
        List<AppChinesePoetryDetail> list = appChinesePoetryDetailService.selectAppChinesePoetryDetailList(appChinesePoetryDetail);
        ExcelUtil<AppChinesePoetryDetail> util = new ExcelUtil<AppChinesePoetryDetail>(AppChinesePoetryDetail.class);
        util.exportExcel(response, list, "诗词明细数据");
    }

    /**
     * 获取诗词明细详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:detail:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(appChinesePoetryDetailService.selectAppChinesePoetryDetailById(id));
    }

    /**
     * 新增诗词明细
     */
    @PreAuthorize("@ss.hasPermi('app:detail:add')")
    @Log(title = "诗词明细", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppChinesePoetryDetail appChinesePoetryDetail)
    {
        appChinesePoetryDetail.setCreateBy(getUsername());
        return toAjax(appChinesePoetryDetailService.insertAppChinesePoetryDetail(appChinesePoetryDetail));
    }

    /**
     * 修改诗词明细
     */
    @PreAuthorize("@ss.hasPermi('app:detail:edit')")
    @Log(title = "诗词明细", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppChinesePoetryDetail appChinesePoetryDetail)
    {
        appChinesePoetryDetail.setUpdateBy(getUsername());
        return toAjax(appChinesePoetryDetailService.updateAppChinesePoetryDetail(appChinesePoetryDetail));
    }

    /**
     * 删除诗词明细
     */
    @PreAuthorize("@ss.hasPermi('app:detail:remove')")
    @Log(title = "诗词明细", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(appChinesePoetryDetailService.deleteAppChinesePoetryDetailByIds(ids));
    }
}
