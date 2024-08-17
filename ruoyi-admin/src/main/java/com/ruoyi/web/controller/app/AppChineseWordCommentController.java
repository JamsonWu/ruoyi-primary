package com.ruoyi.web.controller.app;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.app.domain.AppChinese;
import com.ruoyi.common.core.pdf.PdfRow;
import com.ruoyi.common.utils.pdf.PdfUtil;
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
import com.ruoyi.app.domain.AppChineseWordComment;
import com.ruoyi.app.service.IAppChineseWordCommentService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 词语解释Controller
 *
 * @author ruoyi
 * @date 2024-05-21
 */
@RestController
@RequestMapping("/app/comment")
public class AppChineseWordCommentController extends BaseController {
    @Autowired
    private IAppChineseWordCommentService appChineseWordCommentService;

    /**
     * 查询词语解释列表
     */
    @PreAuthorize("@ss.hasPermi('app:comment:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppChineseWordComment appChineseWordComment) {
        startPage();
        List<AppChineseWordComment> list = appChineseWordCommentService.selectAppChineseWordCommentList(appChineseWordComment);
        return getDataTable(list);
    }

    /**
     * 导出词语解释列表
     */
    @PreAuthorize("@ss.hasPermi('app:comment:export')")
    @Log(title = "词语解释", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppChineseWordComment appChineseWordComment) {
        List<AppChineseWordComment> list = appChineseWordCommentService.selectAppChineseWordCommentList(appChineseWordComment);
        ExcelUtil<AppChineseWordComment> util = new ExcelUtil<AppChineseWordComment>(AppChineseWordComment.class);
        util.exportExcel(response, list, "词语解释数据");
    }

    /**
     * 获取词语解释详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:comment:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(appChineseWordCommentService.selectAppChineseWordCommentById(id));
    }

    /**
     * 新增词语解释
     */
    @PreAuthorize("@ss.hasPermi('app:comment:add')")
    @Log(title = "词语解释", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppChineseWordComment appChineseWordComment) {
        appChineseWordComment.setCreateBy(getUsername());
        return toAjax(appChineseWordCommentService.insertAppChineseWordComment(appChineseWordComment));
    }

    /**
     * 修改词语解释
     */
    @PreAuthorize("@ss.hasPermi('app:comment:edit')")
    @Log(title = "词语解释", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppChineseWordComment appChineseWordComment) {
        appChineseWordComment.setUpdateBy(getUsername());
        return toAjax(appChineseWordCommentService.updateAppChineseWordComment(appChineseWordComment));
    }

    /**
     * 删除词语解释
     */
    @PreAuthorize("@ss.hasPermi('app:comment:remove')")
    @Log(title = "词语解释", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(appChineseWordCommentService.deleteAppChineseWordCommentByIds(ids));
    }


    @PostMapping("/pdf")
    public void exportPdf(HttpServletResponse response, AppChineseWordComment appChineseWordComment, Integer printType) {
        startPage();
        PdfUtil<PdfRow> util = new PdfUtil<PdfRow>(PdfRow.class);
        List<AppChineseWordComment> wordList = appChineseWordCommentService.selectAppChineseWordCommentList(appChineseWordComment);
        // 返回年级
        Set<Integer> gradeSet = wordList.stream().map(AppChineseWordComment::getGrade).collect(Collectors.toSet());

        List<PdfRow> pdfList = new ArrayList<>();
        // 年级
        for (Integer grade : gradeSet) {
            // 当前年级有多少个学期
            Set<Integer> termSet = wordList.stream().filter(p -> Objects.equals(p.getGrade(), grade))
                    .map(AppChineseWordComment::getTerm)
                    .collect(Collectors.toSet());
            for (Integer term : termSet) {
                // 打印标题行
                pdfList.add(new PdfRow(
                        new String[]{" " + PdfUtil.toChinese(grade) + "年级" + (Objects.equals(term, 1) ? "上学期" : "下学期")},
                        1,
                        new int[]{100},
                        new Integer[]{0},
                        12,
                        0
                ));

                List<AppChineseWordComment> dataList = wordList.stream().filter(p -> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(), term))
                        .collect(Collectors.toList());

                for (AppChineseWordComment m : dataList) {
                    if (Objects.equals(printType, 1)) {
                        pdfList.add(new PdfRow(
                                new String[]{" " + m.getComment(), m.getWord()},
                                2,
                                new int[]{85, 15},
                                new Integer[]{0, 1},
                                12,
                                0
                        ));

                    } else if (Objects.equals(printType, 2)) {

                        pdfList.add(new PdfRow(
                                new String[]{" " + m.getComment(), ""},
                                2,
                                new int[]{85, 15},
                                new Integer[]{0, 0},
                                12,
                                0
                        ));
                    }

                }


            }

        }
        util.exportPdf(response, pdfList, "语文词语注释", 0);
    }
}
