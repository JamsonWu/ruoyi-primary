package com.ruoyi.web.controller.app;

import java.util.*;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.app.domain.AppChinese;
import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.pdf.PdfRow;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.pdf.PdfUtil;
import com.ruoyi.system.service.ISysDictTypeService;
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
import com.ruoyi.app.domain.AppMathsConcept;
import com.ruoyi.app.service.IAppMathsConceptService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 数学概念Controller
 * 
 * @author ruoyi
 * @date 2024-06-07
 */
@RestController
@RequestMapping("/app/mathsConcept")
public class AppMathsConceptController extends BaseController
{
    @Autowired
    private ISysDictTypeService dictTypeService;
    @Autowired
    private IAppMathsConceptService appMathsConceptService;

    /**
     * 查询数学概念列表
     */
    @PreAuthorize("@ss.hasPermi('app:mathsConcept:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppMathsConcept appMathsConcept)
    {
        startPage();
        List<AppMathsConcept> list = appMathsConceptService.selectAppMathsConceptList(appMathsConcept);
        return getDataTable(list);
    }

    /**
     * 导出数学概念列表
     */
    @PreAuthorize("@ss.hasPermi('app:mathsConcept:export')")
    @Log(title = "数学概念", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppMathsConcept appMathsConcept)
    {
        List<AppMathsConcept> list = appMathsConceptService.selectAppMathsConceptList(appMathsConcept);
        ExcelUtil<AppMathsConcept> util = new ExcelUtil<AppMathsConcept>(AppMathsConcept.class);
        util.exportExcel(response, list, "数学概念数据");
    }

    /**
     * 获取数学概念详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:mathsConcept:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(appMathsConceptService.selectAppMathsConceptById(id));
    }

    /**
     * 新增数学概念
     */
    @PreAuthorize("@ss.hasPermi('app:mathsConcept:add')")
    @Log(title = "数学概念", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppMathsConcept appMathsConcept)
    {
        return toAjax(appMathsConceptService.insertAppMathsConcept(appMathsConcept));
    }

    /**
     * 修改数学概念
     */
    @PreAuthorize("@ss.hasPermi('app:mathsConcept:edit')")
    @Log(title = "数学概念", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppMathsConcept appMathsConcept)
    {
        return toAjax(appMathsConceptService.updateAppMathsConcept(appMathsConcept));
    }

    /**
     * 删除数学概念
     */
    @PreAuthorize("@ss.hasPermi('app:mathsConcept:remove')")
    @Log(title = "数学概念", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(appMathsConceptService.deleteAppMathsConceptByIds(ids));
    }

    @PostMapping("/pdf")
    public void exportPdf(HttpServletResponse response, AppMathsConcept appMathsConcept, Integer printType) {
        List<SysDictData> chapterData = dictTypeService.selectDictDataByType("app_maths_chapter");
        if (StringUtils.isNull(chapterData)) {
            chapterData = new ArrayList<SysDictData>();
        }
        PdfUtil<PdfRow> util = new PdfUtil<PdfRow>(PdfRow.class);
        List<AppMathsConcept> wordList = appMathsConceptService.selectAppMathsConceptList(appMathsConcept);
        // 返回年级
        Set<Integer> gradeSet =  wordList.stream().map(AppMathsConcept::getGrade).collect(Collectors.toSet());

        List<PdfRow> pdfList = new ArrayList<>();
        // 年级
        for(Integer grade: gradeSet) {
            // 当前年级有多少个学期
            Set<Integer> termSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade))
                    .map(AppMathsConcept::getTerm)
                    .collect(Collectors.toSet());
            for(Integer term: termSet) {

                // 打印标题行
                pdfList.add(new PdfRow(
                        new String[]{" " + PdfUtil.toChinese(grade)+ "年级" + (Objects.equals(term,1) ? "上学期":"下学期")  },
                        1,
                        new int[]{100},
                        new Integer[]{0},
                        12,
                        0
                ));


                // 当前学期下有多少个章节
                Set<Long>  chapterIdList =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term))
                        .map(AppMathsConcept::getChapterId)
                        .collect(Collectors.toSet());
                for(Long chapterId : chapterIdList ) {
                    Optional<SysDictData> dictItem = chapterData.stream().filter(p -> p.getDictValue().equals(String.valueOf(chapterId))).findFirst();
                    if (dictItem.isPresent()) {
                        SysDictData sysDictData = dictItem.get();
                        List<AppMathsConcept>  appMathsConceptList =  wordList
                                .stream()
                                .filter(p-> Objects.equals(p.getGrade(), grade)
                                        && Objects.equals(p.getTerm(),term)
                                        && Objects.equals(p.getChapterId(),chapterId)
                                )
                                .collect(Collectors.toList());
                        pdfList.add(new PdfRow(
                                new String[]{" " + sysDictData.getDictValue().substring(2) + " " + sysDictData.getDictLabel()},
                                1,
                                new int[]{100},
                                new Integer[]{0},
                                12,
                                0
                        ));


                        for(AppMathsConcept m: appMathsConceptList) {
                            // 小节
                            if (Objects.equals(printType,1)) {
                                // 要打印小节
                                pdfList.add(new PdfRow(
                                        new String[]{" " + m.getSectionTitle()},
                                        1,
                                        new int[]{100},
                                        new Integer[]{0},
                                        12,
                                        0
                                ));

                                String expression = m.getExpression();
                                if (StringUtils.isNotEmpty(expression)) {
                                    pdfList.add(new PdfRow(
                                            new String[]{" " + m.getConcept(), m.getExpression(), m.getSample()},
                                            3,
                                            new int[]{30, 40, 30},
                                            new Integer[]{0, 0, 0},
                                            12,
                                            0
                                    ));
                                } else {
                                    pdfList.add(new PdfRow(
                                            new String[]{" " + m.getConcept(), m.getSample()},
                                            2,
                                            new int[]{50, 50},
                                            new Integer[]{0, 0},
                                            12,
                                            0
                                    ));
                                }
                            }
                            else if (Objects.equals(printType,2)) {
                               //  打印题目
                                if (StringUtils.isNotEmpty(m.getSample())) {
                                    pdfList.add(new PdfRow(
                                            new String[]{" " + m.getSample(), ""},
                                            2,
                                            new int[]{60, 40},
                                            new Integer[]{0, 0},
                                            12,
                                            0
                                    ));
                                }
                            }
                        }
                    }


                }



            }

        }
        String title = printType == 1 ? "小学数学基础知识" :"小学数学练习题";
        util.exportPdf(response,pdfList, title,0);
    }
}
