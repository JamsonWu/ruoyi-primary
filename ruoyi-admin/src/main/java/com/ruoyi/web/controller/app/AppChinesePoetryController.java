package com.ruoyi.web.controller.app;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.app.domain.*;
import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.pdf.PdfRow;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.pdf.PdfUtil;
import com.ruoyi.system.service.ISysDictTypeService;
import com.sun.jna.platform.win32.Winsvc;
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
import com.ruoyi.app.service.IAppChinesePoetryService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 诗与词Controller
 *
 * @author ruoyi
 * @date 2024-05-21
 */
@RestController
@RequestMapping("/app/poetry")
public class AppChinesePoetryController extends BaseController {
    @Autowired
    private IAppChinesePoetryService appChinesePoetryService;

    @Autowired
    private ISysDictTypeService dictTypeService;

    /**
     * 查询诗与词列表
     */
    @PreAuthorize("@ss.hasPermi('app:poetry:list')")
    @GetMapping("/list")
    public TableDataInfo list(AppChinesePoetryExt appChinesePoetry) {
        startPage();
        List<AppChinesePoetryExt> list = appChinesePoetryService.selectAppChinesePoetryList(appChinesePoetry);
        return getDataTable(list);
    }

    /**
     * 导出诗与词列表
     */
    @PreAuthorize("@ss.hasPermi('app:poetry:export')")
    @Log(title = "诗与词", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, AppChinesePoetryExt appChinesePoetry) {
        List<AppChinesePoetryExt> list = appChinesePoetryService.selectAppChinesePoetryList(appChinesePoetry);
        ExcelUtil<AppChinesePoetryExt> util = new ExcelUtil<AppChinesePoetryExt>(AppChinesePoetryExt.class);
        util.exportExcel(response, list, "诗与词数据");
    }

    /**
     * 获取诗与词详细信息
     */
    @PreAuthorize("@ss.hasPermi('app:poetry:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id) {
        return success(appChinesePoetryService.selectAppChinesePoetryById(id));
    }

    /**
     * 新增诗与词
     */
    @PreAuthorize("@ss.hasPermi('app:poetry:add')")
    @Log(title = "诗与词", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody AppChinesePoetry appChinesePoetry) {
        appChinesePoetry.setCreateBy(getUsername());
        return toAjax(appChinesePoetryService.insertAppChinesePoetry(appChinesePoetry));
    }

    /**
     * 修改诗与词
     */
    @PreAuthorize("@ss.hasPermi('app:poetry:edit')")
    @Log(title = "诗与词", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody AppChinesePoetryExt appChinesePoetry) {
        appChinesePoetry.setUpdateBy(getUsername());
        return toAjax(appChinesePoetryService.updateAppChinesePoetry(appChinesePoetry));
    }

    /**
     * 删除诗与词
     */
    @PreAuthorize("@ss.hasPermi('app:poetry:remove')")
    @Log(title = "诗与词", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids) {
        return toAjax(appChinesePoetryService.deleteAppChinesePoetryByIds(ids));
    }

    /**
     * @param response
     * @param appChinesePoetry 打印时要按内容类别分开，并在第一行输出填写要求：
     *                         打印类型，1.不传为空是默认打印
     *                         2.打印需要默写的拼音
     *                         3.句子接龙
     *                         4.根据释义写词语或句子
     * @param printType
     */
    @PostMapping("/pdf")
    public void exportPdf(HttpServletResponse response, AppChinesePoetryExt appChinesePoetry, Integer printType) {
        startPage();
        List<AppChinesePoetryExt> list = appChinesePoetryService.selectAppChinesePoetryList(appChinesePoetry);
        List<PdfRow> newList = new ArrayList<>();
        // 要加入年级学期
        Set<Integer> gradeSet = list.stream().map(AppChinesePoetry::getGrade).collect(Collectors.toSet());
        // 年级
        for (Integer grade : gradeSet) {
            // 当前年级有多少个学期
            Set<Integer> termSet = list.stream().filter(p -> Objects.equals(p.getGrade(), grade))
                    .map(AppChinesePoetry::getTerm)
                    .collect(Collectors.toSet());
            for (Integer term : termSet) {
                // 打印标题行
                newList.add(new PdfRow(
                        new String[]{" " + PdfUtil.toChinese(grade) + "年级" + (Objects.equals(term, 1) ? "上学期" : "下学期")},
                        1,
                        new int[]{100},
                        new Integer[]{0},
                        12,
                        0
                ));
                if (printType == 4 || printType == 5){
                    // 补充句子
                    List<Long> sysIdList = list.stream().filter(p -> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(), term) && p.getSysId() > 0 && Convert.toInt(p.getCategoryId(),-1) <= 3 && Convert.toInt(p.getMustWrite(),-1)==1)
                            .map(AppChinesePoetry::getSysId).collect(Collectors.toList());
                    newList.addAll(this.getWriteSentense(sysIdList, printType));
                }
                else {
                    // 读取年级学期下的数据
                    List<Long> sysIdList = list.stream().filter(p -> Objects.equals(p.getGrade(), grade) && Objects.equals(p.getTerm(), term) && p.getSysId() > 0)
                            .map(AppChinesePoetry::getSysId).collect(Collectors.toList());



                    if (!sysIdList.isEmpty()) {
                        if (printType == 3) {
                            newList.addAll(this.getReviewContent(sysIdList));
                        } else {
                            newList.addAll(this.getMustWriteContent(sysIdList, printType));
                        }
                    }
                }
            }
        }

        PdfUtil<PdfRow> util = new PdfUtil<>(PdfRow.class);
        // PDF内容，每行要用一个对象，告知：输出内容，一行几列，居中格式，字体大小
        String title = "日积月累";
        if (printType == 4 || printType == 5) {
            title = "诗词文言文与日积月累填空";
        }
        util.exportPdf(response, newList, title, 1, false);
    }

    private List<PdfRow> getReviewContent(List<Long> list) {
        String[] CategoryTitleArray = {
                "名人名言",
                "理解词语释义",
                "识字加油站",
                "了解课文作者表达的情感",
                "了解课文人物品质描写"};
        List<SysDictData> categoryData = dictTypeService.selectDictDataByType("app_chinese_poetry_category");
        if (StringUtils.isNull(categoryData)) {
            categoryData = new ArrayList<SysDictData>();
        }
        List<PdfRow> newList = new ArrayList<>();
        List<AppChinesePoetryAccum> accumList = appChinesePoetryService.selectAppChinesePoetryAccumListBySysId(list);
        List<AppChinesePoetryAccumDetail> accumDetailList = appChinesePoetryService.selectAppChinesePoetryAccumDetailListBySysId(list);
        // 过滤类别
        Set<Integer> categorySet = accumList.stream()
                .map(p -> Convert.toInt(p.getCategoryId(), 0))
                .collect(Collectors.toSet());

        // 按类别输出
        int k = 0;
        for (Integer categoryId : categorySet) {
            k++;
            Optional<SysDictData> dictItem = categoryData.stream().filter(p -> p.getDictValue().equals(String.valueOf(categoryId))).findFirst();
            if (dictItem.isPresent()) {
                SysDictData sysDictData = dictItem.get();
                // 题目要求：
                if (Arrays.asList(4, 5, 6, 7, 8).contains(categoryId)) {
                    newList.add(new PdfRow(
                            new String[]{" " + PdfUtil.toChinese(k) + "、" + CategoryTitleArray[categoryId - 4]},
                            1,
                            new int[]{100},
                            new Integer[]{0},
                            12,
                            0
                    ));
                } else {
                    newList.add(new PdfRow(
                            new String[]{" " + PdfUtil.toChinese(k) + "、" + sysDictData.getDictLabel()},
                            1,
                            new int[]{100},
                            new Integer[]{0},
                            12,
                            0
                    ));
                }

                // 输出标题内容
                List<AppChinesePoetryAccum> accumListByCategory = accumList.stream().filter(p -> p.getCategoryId().equals(String.valueOf(categoryId))).collect(Collectors.toList());
                for (AppChinesePoetryAccum accum : accumListByCategory) {
                    List<AppChinesePoetryAccumDetail> accumDetailListBySysId = accumDetailList.stream().filter(p -> Objects.equals(p.getpSysId(), accum.getSysId())).collect(Collectors.toList());
                    if (accumDetailListBySysId.size() > 0) {
                        String title = accum.getTitle();
                        if (Arrays.asList(0, 1).contains(categoryId)) {
                            newList.add(new PdfRow(
                                    new String[]{" " + accum.getAuthor(), " " + accum.getDynasty(), title},
                                    3,
                                    new int[]{20, 18, 62},
                                    new Integer[]{1, 1, 1},
                                    12,
                                    0
                            ));
                        } else if (Arrays.asList(3, 4, 5, 7, 8).contains(categoryId)) {

                            // 词运用
                            newList.add(new PdfRow(
                                    new String[]{" " + accum.getTitle()},
                                    1,
                                    new int[]{100},
                                    new Integer[]{0},
                                    12,
                                    0
                            ));
                        } else if (
                                Arrays.asList(6, 7, 8, 10, 11, 12).contains(categoryId)) {
                            // 不用打印
                        } else {
                            newList.add(new PdfRow(
                                    new String[]{" " + accum.getTitle(), accum.getTitleWordMean()},
                                    2,
                                    new int[]{38, 62},
                                    new Integer[]{1, 1},
                                    12,
                                    0
                            ));
                        }
                    }
                    // 打印内容
                    for (AppChinesePoetryAccumDetail detail : accumDetailListBySysId) {
                        if (categoryId == 5) {
                            // 词运用
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getSentense(), detail.getMean()},
                                    2,
                                    new int[]{20, 80},
                                    new Integer[]{0, 0},
                                    12,
                                    0
                            ));
                        } else if (categoryId == 4) {
                            // 名人名言
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getWordMean(), detail.getSentense(), detail.getMean()},
                                    3,
                                    new int[]{23, 32, 45},
                                    new Integer[]{0, 0, 0},
                                    12,
                                    0
                            ));
                        } else if (categoryId == 6) {
                            // 组词
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getMean()},
                                    1,
                                    new int[]{100},
                                    new Integer[]{0},
                                    12,
                                    0
                            ));
                        } else if (Arrays.asList(7, 8).contains(categoryId)) {
                            //
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getSentense(), detail.getMean()},
                                    2,
                                    new int[]{30, 70},
                                    new Integer[]{0, 0},
                                    12,
                                    0
                            ));
                        } else if (Arrays.asList(10, 11).contains(categoryId)) {
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getSentense(), detail.getPinyin(), detail.getMean()},
                                    3,
                                    new int[]{20, 25, 55},
                                    new Integer[]{0, 0, 0},
                                    12,
                                    0
                            ));
                        } else {

                            if (StringUtils.isNotEmpty(detail.getWordMean())) {
                                newList.add(new PdfRow(
                                        new String[]{" " + detail.getSentense(), detail.getWordMean(), detail.getMean()},
                                        3,
                                        new int[]{38, 32, 30},
                                        new Integer[]{0, 0, 0},
                                        12,
                                        0
                                ));
                            } else {
                                newList.add(new PdfRow(
                                        new String[]{" " + detail.getSentense(), detail.getMean()},
                                        2,
                                        categoryId == 12 ? new int[]{50, 50} : new int[]{40, 60},
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

        return newList;
    }

    private List<PdfRow> getWriteSentense(List<Long> list, Integer printType){
        List<AppChinesePoetryAccumDetail> accumDetailList = appChinesePoetryService.selectAppChinesePoetryAccumDetailListBySysId(list);
        List<String> tmpList = new ArrayList<>();
        for(AppChinesePoetryAccumDetail m : accumDetailList) {
            String sentense = m.getSentense();
            if (StringUtils.isNotEmpty(sentense)) {
                sentense = sentense.replace("。", "").replace("，",",");
                tmpList.addAll(Arrays.asList(sentense.split(",")));
            }
        }
        List<PdfRow> pdfList = new ArrayList<>();
        for(int n=0;n<tmpList.size();n++){
            if (n % 2 == 0 && printType == 4) {
                // 奇数行

                pdfList.add(new PdfRow(
                        new String[]{" " + tmpList.get(n)+",", ""},
                        2,
                        new int[]{50, 50},
                        new Integer[]{1, 0},
                        12,
                        0
                ));
            }
            if (n % 2 == 1 && printType == 5) {
                // 偶数行
                pdfList.add(new PdfRow(
                        new String[]{","," " + tmpList.get(n)+""},
                        2,
                        new int[]{50, 50},
                        new Integer[]{2, 1},
                        12,
                        0
                ));
            }

        }
        return  pdfList;

    }
    // 获取要默写的PDF内容
    private List<PdfRow> getMustWriteContent(List<Long> list, Integer printType) {

        String[] CategoryTitleArray = {
                "根据名言填写名人",
                "根据释义填写词语",
                "识字加油站",
                "根据作者所表达的情感找对应的课文",
                "根据人物品质描写找对应的课文",
                "句式训练"};

        List<SysDictData> categoryData = dictTypeService.selectDictDataByType("app_chinese_poetry_category");
        if (StringUtils.isNull(categoryData)) {
            categoryData = new ArrayList<SysDictData>();
        }
        List<PdfRow> newList = new ArrayList<>();
        List<AppChinesePoetryAccum> accumList = appChinesePoetryService.selectAppChinesePoetryAccumListBySysId(list);
        List<AppChinesePoetryAccumDetail> accumDetailList = appChinesePoetryService.selectAppChinesePoetryAccumDetailListBySysId(list);
        // 过滤类别
        Set<Integer> categorySet = accumList.stream()
                .map(p -> Convert.toInt(p.getCategoryId(), 0))
                .collect(Collectors.toSet());
        // 按类别输出
        int k = 0;
        for (Integer categoryId : categorySet) {
            k++;
            Optional<SysDictData> dictItem = categoryData.stream().filter(p -> p.getDictValue().equals(String.valueOf(categoryId))).findFirst();
            if (dictItem.isPresent()) {
                SysDictData sysDictData = dictItem.get();
                // 题目要求：
                if (Arrays.asList(4, 5, 6, 7, 8, 12).contains(categoryId)) {
                    int cIndex = categoryId - 4;
                    if (categoryId == 12) {
                        cIndex = 5;
                    }
                    newList.add(new PdfRow(
                            new String[]{" " + PdfUtil.toChinese(k) + "、" + CategoryTitleArray[cIndex]},
                            1,
                            new int[]{100},
                            new Integer[]{0},
                            12,
                            0
                    ));
                } else {
                    newList.add(new PdfRow(
                            new String[]{" " + PdfUtil.toChinese(k) + "、根据拼音写" + sysDictData.getDictLabel()},
                            1,
                            new int[]{100},
                            new Integer[]{0},
                            12,
                            0
                    ));
                }

                // 输出标题内容
                List<AppChinesePoetryAccum> accumListByCategory = accumList.stream().filter(p -> p.getCategoryId().equals(String.valueOf(categoryId))).collect(Collectors.toList());
                for (AppChinesePoetryAccum accum : accumListByCategory) {
                    List<AppChinesePoetryAccumDetail> accumDetailListBySysId = accumDetailList.stream().filter(p -> Objects.equals(p.getpSysId(), accum.getSysId())).collect(Collectors.toList());
                    if (accumDetailListBySysId.size() > 0) {
                        String title = accum.getTitlePinyin();
                        if (categoryId <= 1) {
                            newList.add(new PdfRow(
                                    new String[]{" 作者", " 朝代", title},
                                    3,
                                    new int[]{20, 20, 60},
                                    new Integer[]{1, 1, 1},
                                    12,
                                    0
                            ));
                            newList.add(new PdfRow(
                                    new String[]{"", "", ""},
                                    3,
                                    new int[]{20, 20, 60},
                                    new Integer[]{1, 1, 1},
                                    12,
                                    0
                            ));

                        } else if (categoryId >= 2 && categoryId <= 8 && categoryId != 6) {

                            // 词运用
                            newList.add(new PdfRow(
                                    new String[]{" " + accum.getTitle()},
                                    1,
                                    new int[]{100},
                                    new Integer[]{0},
                                    12,
                                    0
                            ));
                        } else if (Arrays.asList(6, 10, 11, 12).contains(categoryId)) {

                        } else {
                            newList.add(new PdfRow(
                                    new String[]{" " + accum.getTitle(), ""},
                                    2,
                                    new int[]{50, 50},
                                    new Integer[]{1, 1},
                                    12,
                                    0
                            ));
                        }
                    }
                    // 打印内容
                    for (AppChinesePoetryAccumDetail detail : accumDetailListBySysId) {
                        if (categoryId == 5) {
                            // 词运用
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getMean(), ""},
                                    2,
                                    new int[]{80, 20},
                                    new Integer[]{0, 0},
                                    12,
                                    0
                            ));
                        } else if (categoryId == 4) {
                            // 名人名言
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getSentense(), ""},
                                    2,
                                    new int[]{80, 20},
                                    new Integer[]{0, 0},
                                    12,
                                    0
                            ));
                        } else if (categoryId == 6) {
                            // 组词
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getSentense()},
                                    1,
                                    new int[]{100},
                                    new Integer[]{0},
                                    12,
                                    0
                            ));
                        } else if (Arrays.asList(7, 8).contains(categoryId)) {
                            // 名人名言
                            newList.add(new PdfRow(
                                    new String[]{" " + detail.getMean(), ""},
                                    2,
                                    new int[]{80, 20},
                                    new Integer[]{0, 0},
                                    12,
                                    0
                            ));
                        } else {
                            if (categoryId == 10) {
                                // 多音字
                            } else {
                                String printContent = detail.getPinyin();
                                if (categoryId == 12) {
                                    printContent = detail.getSentense();
                                }
                                newList.add(new PdfRow(
                                        new String[]{" " + printContent},
                                        1,
                                        new int[]{100},
                                        new Integer[]{0},
                                        12,
                                        0
                                ));

                                newList.add(new PdfRow(
                                        new String[]{StringUtils.EMPTY},
                                        1,
                                        new int[]{100},
                                        new Integer[]{0},
                                        12,
                                        0

                                ));
                            }

                        }
                    }

                    if (Arrays.asList(10, 11).contains(categoryId)) {

                        if (categoryId == 10) {
                            // 多音字
                            List<String> dataList = accumDetailListBySysId.stream().map(AppChinesePoetryAccumDetail::getPinyin).collect(Collectors.toList());
                            if (!dataList.isEmpty()) {
                                newList.addAll(PdfUtil.getPdfList(dataList, 2, true));
                            }

                        }

                        // 根据含义写词语
                        newList.add(new PdfRow(
                                new String[]{" 根据译文填写"+ accum.getTitle() +"词语"},
                                1,
                                new int[]{100},
                                new Integer[]{0},
                                12,
                                0
                        ));

                        for (AppChinesePoetryAccumDetail detail : accumDetailListBySysId) {
                            String mean = detail.getMean();
                            if (StringUtils.isNotEmpty(mean)) {
                                String[] meanArr = mean.split(";");
                                for (String wordMean : meanArr) {
                                    String[] wordMeanArr = wordMean.split(":");
                                    if (wordMeanArr.length > 1) {
                                        if (StringUtils.isNotEmpty(wordMeanArr[1])) {
                                            newList.add(new PdfRow(
                                                    new String[]{" " + wordMeanArr[1], ""},
                                                    2,
                                                    new int[]{80, 20},
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

            }

        }

        return newList;
    }

    public static void main(String[] args) {
//        String word = "干干净净";
//        if (word.length() == 4) {
//            String[] tmpArr = word.split("");
//            if (tmpArr[0].equals(tmpArr[1])) {
//                if (tmpArr[2].equals(tmpArr[3])) {
//                    System.out.println("AABB");
//                } else {
//                    System.out.println("AABC");
//                }
//            } else if (tmpArr[0].equals(tmpArr[2])) {
//                System.out.println("ABAC");
//            } else if (tmpArr[2].equals(tmpArr[3])) {
//                System.out.println("ABCC");
//            } else if (tmpArr[0].equals(tmpArr[3])) {
//                System.out.println("ABCA");
//            }
//        }

        String str = "众鸟高飞尽，孤云独去闲。 ";
        String[] wordArr = str.split("，");
       if ( wordArr.length == 2)
       {

       }
       else
       {
           wordArr = str.split(",");

       }
        System.out.println(wordArr[1].replace("。",""));


    }
}
