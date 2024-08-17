package com.ruoyi.web.controller.app;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.utils.StringUtils;
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
import com.ruoyi.app.domain.AppEnglishPronounce;
import com.ruoyi.app.service.IAppEnglishPronounceService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 单词发音对照表Controller
 *
 * @author JamsonWu
 * @date 2024-05-15
 */
@RestController
@RequestMapping("/app/pronounce")
public class AppEnglishPronounceController extends BaseController {
    @Autowired
    private IAppEnglishPronounceService appEnglishPronounceService;
    /**
     * 查询单词发音对照表列表
     */
    @PreAuthorize("@ss.hasPermi('app:pronounce:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppEnglishPronounce appEnglishPronounce) {
        startPage();
        List<AppEnglishPronounce> list = appEnglishPronounceService.selectAppEnglishPronounceList(appEnglishPronounce);
        return getDataTable(list);
    }

    /**
     * 导出单词发音对照表列表
     */
    @PreAuthorize("@ss.hasPermi('app:pronounce:export')")
    @Log(title = "单词发音对照表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppEnglishPronounce appEnglishPronounce) {
        List<AppEnglishPronounce> list = appEnglishPronounceService.selectAppEnglishPronounceList(appEnglishPronounce);
        ExcelUtil<AppEnglishPronounce> util = new ExcelUtil<AppEnglishPronounce>(AppEnglishPronounce.class);
        util.exportExcel(response, list, "单词发音对照表数据");
    }

    /**
     * 获取单词发音对照表详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:pronounce:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(appEnglishPronounceService.selectAppEnglishPronounceById(id));
    }

    /**
     * 新增单词发音对照表
     */
    @PreAuthorize("@ss.hasPermi('app:pronounce:add')")
    @Log(title = "单词发音对照表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppEnglishPronounce appEnglishPronounce) {
        appEnglishPronounce.setCreateBy(getUsername());
        return toAjax(appEnglishPronounceService.insertAppEnglishPronounce(appEnglishPronounce));
    }

    /**
     * 修改单词发音对照表
     */
    @PreAuthorize("@ss.hasPermi('app:pronounce:edit')")
    @Log(title = "单词发音对照表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppEnglishPronounce appEnglishPronounce) {
        appEnglishPronounce.setUpdateBy(getUsername());
        return toAjax(appEnglishPronounceService.updateAppEnglishPronounce(appEnglishPronounce));
    }

    /**
     * 删除单词发音对照表
     */
    @PreAuthorize("@ss.hasPermi('app:pronounce:remove')")
    @Log(title = "单词发音对照表", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(appEnglishPronounceService.deleteAppEnglishPronounceByIds(ids));
    }
}
