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
import com.ruoyi.app.domain.AppChinesePoetryJson;
import com.ruoyi.app.service.IAppChinesePoetryJsonService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 提供JSON完整数据,预留换JSON库Controller
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
@RestController
@RequestMapping("/app/poetryjson")
public class AppChinesePoetryJsonController extends BaseController
{
    @Autowired
    private IAppChinesePoetryJsonService appChinesePoetryJsonService;

    /**
     * 查询提供JSON完整数据,预留换JSON库列表
     */
    @PreAuthorize("@ss.hasPermi('app:poetryjson:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppChinesePoetryJson appChinesePoetryJson)
    {
        startPage();
        List<AppChinesePoetryJson> list = appChinesePoetryJsonService.selectAppChinesePoetryJsonList(appChinesePoetryJson);
        return getDataTable(list);
    }

    /**
     * 导出提供JSON完整数据,预留换JSON库列表
     */
    @PreAuthorize("@ss.hasPermi('app:poetryjson:export')")
    @Log(title = "提供JSON完整数据,预留换JSON库", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppChinesePoetryJson appChinesePoetryJson)
    {
        List<AppChinesePoetryJson> list = appChinesePoetryJsonService.selectAppChinesePoetryJsonList(appChinesePoetryJson);
        ExcelUtil<AppChinesePoetryJson> util = new ExcelUtil<AppChinesePoetryJson>(AppChinesePoetryJson.class);
        util.exportExcel(response, list, "提供JSON完整数据,预留换JSON库数据");
    }

    /**
     * 获取提供JSON完整数据,预留换JSON库详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:poetryjson:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(appChinesePoetryJsonService.selectAppChinesePoetryJsonById(id));
    }

    /**
     * 新增提供JSON完整数据,预留换JSON库
     */
    @PreAuthorize("@ss.hasPermi('app:poetryjson:add')")
    @Log(title = "提供JSON完整数据,预留换JSON库", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppChinesePoetryJson appChinesePoetryJson)
    {
        appChinesePoetryJson.setCreateBy(getUsername());
        return toAjax(appChinesePoetryJsonService.insertAppChinesePoetryJson(appChinesePoetryJson));
    }

    /**
     * 修改提供JSON完整数据,预留换JSON库
     */
    @PreAuthorize("@ss.hasPermi('app:poetryjson:edit')")
    @Log(title = "提供JSON完整数据,预留换JSON库", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppChinesePoetryJson appChinesePoetryJson)
    {
        appChinesePoetryJson.setUpdateBy(getUsername());
        return toAjax(appChinesePoetryJsonService.updateAppChinesePoetryJson(appChinesePoetryJson));
    }

    /**
     * 删除提供JSON完整数据,预留换JSON库
     */
    @PreAuthorize("@ss.hasPermi('app:poetryjson:remove')")
    @Log(title = "提供JSON完整数据,预留换JSON库", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(appChinesePoetryJsonService.deleteAppChinesePoetryJsonByIds(ids));
    }
}
