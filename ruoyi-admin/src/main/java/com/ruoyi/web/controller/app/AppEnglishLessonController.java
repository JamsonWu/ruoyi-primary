package com.ruoyi.web.controller.app;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.microsoft.schemas.office.visio.x2012.main.SectionType;
import com.ruoyi.app.domain.AppChinese;
import com.ruoyi.common.core.pdf.PdfRow;
import com.ruoyi.common.utils.StringUtils;
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
import com.ruoyi.app.domain.AppEnglishLesson;
import com.ruoyi.app.service.IAppEnglishLessonService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 小学课文单词与词组Controller
 *
 * @author ruoyi
 * @date 2024-05-15
 */
@RestController
@RequestMapping("/app/lesson")
public class AppEnglishLessonController extends BaseController {
    @Autowired
    private IAppEnglishLessonService appEnglishLessonService;

    /**
     * 查询小学课文单词与词组列表
     */
    @PreAuthorize("@ss.hasPermi('app:lesson:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppEnglishLesson appEnglishLesson) {
        startPage();
        List<AppEnglishLesson> list = appEnglishLessonService.selectAppEnglishLessonList(appEnglishLesson);
        return getDataTable(list);
    }

    /**
     * 导出小学课文单词与词组列表
     */
    @PreAuthorize("@ss.hasPermi('app:lesson:export')")
    @Log(title = "小学课文单词与词组", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppEnglishLesson appEnglishLesson) {
        List<AppEnglishLesson> list = appEnglishLessonService.selectAppEnglishLessonList(appEnglishLesson);
        ExcelUtil<AppEnglishLesson> util = new ExcelUtil<AppEnglishLesson>(AppEnglishLesson.class);
        util.exportExcel(response, list, "小学课文单词与词组数据");
    }

    /**
     * 获取小学课文单词与词组详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:lesson:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(appEnglishLessonService.selectAppEnglishLessonById(id));
    }

    /**
     * 新增小学课文单词与词组
     */
    @PreAuthorize("@ss.hasPermi('app:lesson:add')")
    @Log(title = "小学课文单词与词组", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppEnglishLesson appEnglishLesson) {
        appEnglishLesson.setCreateBy(getUsername());
        return toAjax(appEnglishLessonService.insertAppEnglishLesson(appEnglishLesson));
    }

    /**
     * 修改小学课文单词与词组
     */
    @PreAuthorize("@ss.hasPermi('app:lesson:edit')")
    @Log(title = "小学课文单词与词组", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppEnglishLesson appEnglishLesson) {
        appEnglishLesson.setUpdateBy(getUsername());
        return toAjax(appEnglishLessonService.updateAppEnglishLesson(appEnglishLesson));
    }

    /**
     * 删除小学课文单词与词组
     */
    @PreAuthorize("@ss.hasPermi('app:lesson:remove')")
    @Log(title = "小学课文单词与词组", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(appEnglishLessonService.deleteAppEnglishLessonByIds(ids));
    }


    /**
     * 打印单词听写+短语听写
     *
     * @param response
     * @param appEnglishLesson
     */
    @PostMapping("/pdf")
    public void exportPdf(HttpServletResponse response, AppEnglishLesson appEnglishLesson, Boolean isPrintPronounce) {
        Integer dataType = appEnglishLesson.getDataType();
        PdfUtil<PdfRow> util = new PdfUtil<PdfRow>(PdfRow.class);
        startPage();
        List<AppEnglishLesson> wordList = appEnglishLessonService
                .selectAppEnglishLessonList(appEnglishLesson);

        // 年级-学期-单元：
        //             单词：
        //             短语:
        //             句型:
        // 返回年级
       Set<Integer> gradeSet =  wordList.stream().map(AppEnglishLesson::getGrade).collect(Collectors.toSet());

       List<PdfRow> pdfList = new ArrayList<>();
       // 年级
       for(Integer grade: gradeSet) {
           // 当前年级有多少个学期
           Set<Integer> termSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade))
                   .map(AppEnglishLesson::getTerm)
                   .collect(Collectors.toSet());
           for(Integer term: termSet) {
               // 当前学期下有多少个单元
               Set<Integer> unitSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term))
                       .map(AppEnglishLesson::getUnit)
                       .collect(Collectors.toSet());

               for (Integer unit: unitSet) {
                   // 当前单元下有多少种类型词语
                   Set<Integer> dataTypeSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term) && Objects.equals(p.getUnit(),unit))
                           .map(AppEnglishLesson::getDataType)
                           .collect(Collectors.toSet());
                   // 打印标题行
                   pdfList.add(new PdfRow(
                           new String[]{" " + PdfUtil.toChinese(grade)+ "年级" + (Objects.equals(term,1) ? "上学期":"下学期") + "第"+ unit+ "单元" },
                           1,
                           new int[]{100},
                           new Integer[]{0},
                           12,
                           0
                   ));

                   // 遍历不同数据类型
                   for(Integer dType: dataTypeSet) {
                       List<String> dataList =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term) && Objects.equals(p.getUnit(),unit) && Objects.equals(p.getDataType(),dType))
                               .map(isPrintPronounce ? AppEnglishLesson::getPronounce : AppEnglishLesson::getChinese)
                               .collect(Collectors.toList());
//                      List<String> dataList = dataSet.stream().filter(StringUtils::isNotEmpty).collect(Collectors.toList());
                       if (!dataList.isEmpty()) {
                           if (Objects.equals(dType, 1)) {
                               // 单词
                               pdfList.add(new PdfRow(
                                       new String[]{" 单词"},
                                       1,
                                       new int[]{100},
                                       new Integer[]{0},
                                       12,
                                       0
                               ));
                               pdfList.addAll(PdfUtil.getPdfList(dataList, 7));
                           } else if (Objects.equals(dType, 2)) {
                               // 短语

                                   pdfList.add(new PdfRow(
                                           new String[]{" 短语"},
                                           1,
                                           new int[]{100},
                                           new Integer[]{0},
                                           12,
                                           0
                                   ));
                                   pdfList.addAll(PdfUtil.getPdfList(dataList, 3));

                           } else {
                               // 句子
                               pdfList.add(new PdfRow(
                                       new String[]{" 句型"},
                                       1,
                                       new int[]{100},
                                       new Integer[]{0},
                                       12,
                                       0
                               ));
                               pdfList.addAll(PdfUtil.getPdfList(dataList, 2));
                           }
                       }
                   }
               }

           }

       }

        util.exportPdf(response,pdfList, "英语单词短语句型默写",0);
    }
}
