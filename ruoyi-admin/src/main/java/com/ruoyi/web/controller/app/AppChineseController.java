package com.ruoyi.web.controller.app;

import java.lang.reflect.Array;
import java.util.*;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.app.domain.AppEnglishLesson;
import com.ruoyi.common.core.domain.entity.SysUser;
import com.ruoyi.common.core.pdf.PdfRow;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.pdf.PdfUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
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
import com.ruoyi.app.domain.AppChinese;
import com.ruoyi.app.service.IAppChineseService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 语文词语Controller
 *
 * @author ruoyi
 * @date 2024-05-14
 */
@RestController
@RequestMapping("/app/chinese")
public class AppChineseController extends BaseController {
    @Autowired
    private IAppChineseService appChineseService;

    /**
     * 查询语文词语列表
     */
    @PreAuthorize("@ss.hasPermi('app:chinese:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppChinese appChinese) {
        startPage();
        List<AppChinese> list = appChineseService.selectAppChineseList(appChinese);
        return getDataTable(list);
    }

    /**
     * 导出语文词语列表
     */
    @PreAuthorize("@ss.hasPermi('app:chinese:export')")
    @Log(title = "语文词语", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppChinese appChinese) {
        List<AppChinese> list = appChineseService.selectAppChineseList(appChinese);
        ExcelUtil<AppChinese> util = new ExcelUtil<AppChinese>(AppChinese.class);
        util.exportExcel(response, list, "语文词语数据");
    }

    /**
     * 获取语文词语详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:chinese:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id) {
        return success(appChineseService.selectAppChineseById(id));
    }

    /**
     * 新增语文词语
     */
    @PreAuthorize("@ss.hasPermi('app:chinese:add')")
    @Log(title = "语文词语", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppChinese appChinese) {
        appChinese.setCreateBy(getUsername());
        return toAjax(appChineseService.insertAppChinese(appChinese));
    }

    /**
     * 修改语文词语
     */
    @PreAuthorize("@ss.hasPermi('app:chinese:edit')")
    @Log(title = "语文词语", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppChinese appChinese) {
        appChinese.setUpdateBy(getUsername());
        return toAjax(appChineseService.updateAppChinese(appChinese));
    }

    @PreAuthorize("@ss.hasPermi('app:chinese:edit')")
    @Log(title = "拆分词语", businessType = BusinessType.UPDATE)
    @PostMapping("/divide")
    @Transactional
    public AjaxResult divideWord(@RequestBody HashMap map) {
        int res = 0;
       if (map.containsKey("id") && map.containsKey("wordOne") && map.containsKey("wordTwo")) {

           Integer id = Convert.toInt(map.get("id")) ;
           String wordOne  = (String)map.get("wordOne");
           String wordTwo  = (String)map.get("wordTwo");
           String wordOnePinyin = (String)map.get("wordOnePinyin");
           String wordTwoPinyin = (String)map.get("wordTwoPinyin");
           // 修改
           AppChinese appChinese = appChineseService.selectAppChineseById(id);
           appChinese.setWordType(1);
           appChinese.setWord(wordOne);
           appChinese.setPinyin(wordOnePinyin);
           appChinese.setUpdateBy(getUsername());

           appChineseService.updateAppChinese(appChinese);

           AppChinese appChinese2 = new AppChinese();
           BeanUtils.copyProperties(appChinese,appChinese2,"id","update_by","update_time");
           appChinese2.setWord(wordTwo);
           appChinese2.setPinyin(wordTwoPinyin);
           appChinese2.setCreateBy(appChinese2.getCreateBy());
           appChineseService.insertAppChinese(appChinese2);
           res = 1;

       }
        return toAjax(res);
    }

    /**
     * 删除语文词语
     */
    @PreAuthorize("@ss.hasPermi('app:chinese:remove')")
    @Log(title = "语文词语", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids) {
        return toAjax(appChineseService.deleteAppChineseByIds(ids));
    }

    @PostMapping("/pdf")
    public void exportPdf(HttpServletResponse response, AppChinese appChinese,Integer printType) {
        startPage();
        PdfUtil<PdfRow> util = new PdfUtil<PdfRow>(PdfRow.class);
        List<AppChinese> wordList = appChineseService.selectAppChineseList(appChinese);
        // 返回年级
        Set<Integer> gradeSet =  wordList.stream().map(AppChinese::getGrade).collect(Collectors.toSet());

        List<PdfRow> pdfList = new ArrayList<>();
        // 年级
        for(Integer grade: gradeSet) {
            // 当前年级有多少个学期
            Set<Integer> termSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade))
                    .map(AppChinese::getTerm)
                    .collect(Collectors.toSet());
            for(Integer term: termSet) {
                // 当前学期下有多少个单元
                Set<Integer> unitSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term))
                        .map( AppChinese::getUnit)
                        .collect(Collectors.toSet());

                for (Integer unit: unitSet) {
                    // 当前单元下有多少种类型词语
                    Set<Integer> dataTypeSet =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term) && Objects.equals(p.getUnit(),unit))
                            .map(AppChinese::getWordType)
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
                        List<String> dataList =  wordList.stream().filter(p-> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(),term) && Objects.equals(p.getUnit(),unit) && Objects.equals(p.getWordType(),dType))
                                .map(Objects.equals(printType,1) ? AppChinese::getPinyin:AppChinese::getWord)
                                .collect(Collectors.toList());
//                        List<String> dataList = dataSet.stream().filter(StringUtils::isNotEmpty).collect(Collectors.toList());
                        if (!dataList.isEmpty()) {
                            if (Objects.equals(dType, 1)) {
                                pdfList.addAll(PdfUtil.getPdfList(dataList, 7,printType ==1));
                            } else if (Objects.equals(dType, 2)) {
                                pdfList.addAll(PdfUtil.getPdfList(dataList, 4,printType==1));

                            } else {
                                // 句子
                                pdfList.add(new PdfRow(
                                        new String[]{" 其它"},
                                        1,
                                        new int[]{100},
                                        new Integer[]{0},
                                        12,
                                        0
                                ));
                                pdfList.addAll(PdfUtil.getPdfList(dataList, 2,printType==1));
                            }
                        }
                    }
                }

            }

        }
        String title = printType == 1 ? "语文词语表默写": "语文词语表";
        util.exportPdf(response,pdfList, title,0);
    }


}
