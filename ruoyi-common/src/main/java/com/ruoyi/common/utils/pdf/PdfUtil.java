package com.ruoyi.common.utils.pdf;

import com.lowagie.text.*;
import com.lowagie.text.Font;
import com.lowagie.text.Rectangle;
import com.lowagie.text.pdf.*;
import com.ruoyi.common.core.pdf.PdfRow;
import com.ruoyi.common.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static com.lowagie.text.Footnote.FONT;

/**
 * PDF相关处理
 */
public class PdfUtil<T>  {
    private static final Logger log = LoggerFactory.getLogger(PdfUtil.class);
    private static final String[] CHINESE_NUMBERS = {"一", "二", "三", "四", "五", "六", "七", "八", "九","十","十一","十二"};

    /**
     * PDF当前使用的字体
     */
    Font font;

    Class<T> clazz;
    /**
     * 是否中文
     */
    Boolean isChinese = true;

    enum OSName{
        Win,
        Linux
    }
    OSName curOSName;
    OSName getOSName(){
        return  this.curOSName;
    }
    void setOSName(){
        String os = System.getProperty("os.name").toLowerCase();
        if (os.contains("win")) {
            this.curOSName = OSName.Win;
        }
        else {
            this.curOSName = OSName.Linux;
        }

    }
    public PdfUtil(Class<T> clazz, Boolean isChinese) {
        this(clazz);
        this.isChinese = isChinese;
    }
    public PdfUtil(Class<T> clazz) {
        this.clazz = clazz;
        this.isChinese = true;
        this.setOSName();
    }

    public static String toChinese(int number) {
        if (number < 1 || number > 12) {
            throw new IllegalArgumentException("Number must be between 1 and 12.");
        }
        return CHINESE_NUMBERS[number - 1];
    }
    public void exportPdf(HttpServletResponse response, List<T> list, String title, int pdfColumnNum,Boolean isAutoBlank) {
        exportPdf(response, list, "", title, pdfColumnNum,isAutoBlank);
    }
    public void exportPdf(HttpServletResponse response, List<T> list, String title, int pdfColumnNum) {
        exportPdf(response, list, "", title, pdfColumnNum,true);
    }

    public void exportPdf(HttpServletResponse response, List<T> list, String pdfName, String title, int pdfColumnNum,Boolean isAutoBlank) {
        response.setContentType("application/pdf");
        response.setCharacterEncoding("utf-8");
        String headerValue = "attachment; filename=example.pdf";
        response.setHeader("Content-Disposition", headerValue);
        this.init(12, Font.NORMAL);
        try {
            exportPdf(response.getOutputStream(), list, title, pdfColumnNum,isAutoBlank);
        } catch (Exception e) {
            log.error(e.getMessage());
        }
    }

    private void init(int fontSize, int fontStyle) {
        if (!this.isChinese){
            return;
        }
        try {
            // 默认是Linux系统
            String fontName = "/usr/share/fonts/simsun/simsun.ttc,0";
            if (this.getOSName() == OSName.Win) {
                fontName = "C:\\Windows\\Fonts\\simsun.ttc,0";
            }
            BaseFont SIMSUN = BaseFont.createFont(fontName, BaseFont.IDENTITY_H, true);
            this.font = new Font(SIMSUN, fontSize, fontStyle);
        } catch (Exception e) {
            log.error("获取PDF字体simsun异常{}", e.getMessage());
        }
    }

    /**
     * 设置表格的数据单元格样式
     *
     * @param text 单元格内容
     */
    private PdfPCell createDataCell(String text,int align) {
        Paragraph paragraph = this.isChinese ? new Paragraph(text,font) : new Paragraph(text);
        paragraph.setLeading(5);
        PdfPCell cell = new PdfPCell(paragraph);
        // 设置水平对齐方式
        cell.setHorizontalAlignment(align);
        // 设置垂直对齐方式
        cell.setVerticalAlignment(Element.ALIGN_CENTER);
        // 设置单元格边框颜色，同样用四个bit位分别表示上(0001)、下(0010)、左(0100)、右(1000)四个边
        cell.setBorder(Rectangle.BOX);
        // 设置单元格边框颜色。注：经过实测，setBorderColor有效，但是setBorderColorTop/Bottom/Left/Right是无效的，也就是Cell的边框只能设置一个颜色
        cell.setBorderColor(Color.LIGHT_GRAY);
        // 设置背景色
//        cell.setBackgroundColor(Color.LIGHT_GRAY);
        cell.setFixedHeight(30);
        cell.setMinimumHeight(30);
        cell.setPaddingTop(7);
        cell.setPaddingBottom(7);
        return cell;
    }

    private PdfPCell createDataCellTitle(String text, int colNum, int align) {
        Paragraph paragraph = this.isChinese ? new Paragraph(text,font) : new Paragraph(text);

        PdfPCell cell = new PdfPCell(paragraph);
        // 设置水平对齐方式
        cell.setHorizontalAlignment(align);
        // 设置垂直对齐方式
        cell.setVerticalAlignment(Element.ALIGN_CENTER);
        cell.setFixedHeight(30);
        cell.setMinimumHeight(30);
        cell.setPaddingTop(7);
        cell.setPaddingBottom(7);
        cell.setColspan(colNum);
        cell.setBorder(0);
        return cell;
    }

    public void exportPdf(OutputStream outputStream, List<T> list, String title, int pdfColumnNum,Boolean isAutoBlank) {
        writePdf(outputStream, list, title, pdfColumnNum,isAutoBlank);
    }

    private int getPdfRows(int listCount, int colCount) {
        int rowCount = listCount / colCount;
        int remainder = listCount % colCount;
        return remainder > 0 ? rowCount + 1 : rowCount;
    }

    /**
     * 生成行列字符串数据
     * @param list
     * 列数
     * @param columnNum
     * @return
     */
    private  String[][] getPdfData(List<String> list,Integer columnNum){
        // 单词 0，1，2，3，4，5，6
        int rowIndex = 0;
        int recordCount = list.size();
        int rowCount = recordCount % columnNum > 0 ? recordCount / columnNum + 2 : recordCount / columnNum + 1;
        String[][] data = new String[rowCount][columnNum];
        for (int k = 0, n = list.size(); k < n; k++) {
            int remainder = k % columnNum;
            if (remainder == 0) {
                rowIndex = k / columnNum;
                if (k > 0) {
                    for (int i = 0; i < columnNum; i++) {
                        data[rowIndex][i] = StringUtils.EMPTY;
                    }
                }
            }
            data[rowIndex][remainder] = list.get(k);
        }
        // 余数处理
        int endRemainder = list.size() % columnNum;
        if (endRemainder > 0) {
            // 如何存在余数，则末尾补空值
            for (int k = endRemainder; k < columnNum; k++) {
                data[rowIndex][k] = StringUtils.EMPTY;
            }
        }
        // 添加输入行
        for (int i = 0; i < columnNum; i++) {
            data[rowIndex+1][i] = StringUtils.EMPTY;
        }
        return data;
    }
    private void writePdf2(OutputStream outputStream, List<T> list, String title, int pdfColumnNum,Boolean isAutoBlank) {
        int pdfRows = getPdfRows(list.size(), pdfColumnNum);
        String[][] rows = new String[pdfRows][pdfColumnNum];
        Object[] listArr = list.toArray();
        int rowIndex = -1;
        for (int k = 0; k < listArr.length; k++) {
            if (k % pdfColumnNum == 0) {
                rowIndex++;
            }
            rows[rowIndex][k % pdfColumnNum] = (String) listArr[k];
        }

        Document document = new Document(PageSize.A4, 20, 20, 20, 20);
        try {
            // step2
            PdfWriter.getInstance(document, outputStream);
            // step3
            document.open();
            // step4
            PdfPTable datatable = new PdfPTable(pdfColumnNum);
            int[] headerwidths = new int[pdfColumnNum];
            int columnPercent = 100 / pdfColumnNum;
            Arrays.fill(headerwidths, columnPercent);


            datatable.setWidths(headerwidths);
            datatable.setWidthPercentage(100); // percentage
            datatable.addCell(createDataCellTitle(title, pdfColumnNum,1));
            for (int i = 0; i < pdfRows; i++) {
                // 打印数据
                for (int j = 0; j < pdfColumnNum; j++) {
                    datatable.addCell(createDataCell(rows[i][j],1));
                }
                // 打印空白行
                if (isAutoBlank) {
                    for (int j = 0; j < pdfColumnNum; j++) {
                        datatable.addCell(createDataCell("",1));
                    }
                }
            }
            document.add(datatable);

        } catch (Exception de) {
            de.printStackTrace();
        } finally {
            // step5
            document.close();
        }

    }

    /**
     * 扩展版
     * @param outputStream
     * @param list
     * @param title
     * @param pdfColumnNum
     * @param isAutoBlank
     */
    private void writePdf(OutputStream outputStream, List<T> list, String title, int pdfColumnNum,Boolean isAutoBlank) {

        class PageNumberingEvent extends PdfPageEventHelper {
            public void onEndPage(PdfWriter writer, Document doc) {
                Font headFont = FontFactory.getFont(FONT, BaseFont.IDENTITY_H, BaseFont.EMBEDDED, 12,Font.NORMAL,Color.BLACK);
                Phrase pageNumberPh = new Phrase("- "+String.valueOf(doc.getPageNumber())+" -",headFont);
                float center = doc.getPageSize().getRight() / 2;//页面的水平中点
                float top = doc.getPageSize().getTop()-36;
                float bottom = doc.getPageSize().getBottom()+15;
                ColumnText.showTextAligned(writer.getDirectContent(),Element.ALIGN_RIGHT,pageNumberPh,center,bottom,0); //页码
            }
        }
        Document document = new Document(PageSize.A4, 20, 20, 20, 25);
        try {
            // step2
            PdfWriter writer = PdfWriter.getInstance(document, outputStream);
            // 添加页码
            writer.setPageEvent(new PageNumberingEvent());
            // step3
            document.open();
            // step4
            PdfPTable datatable = new PdfPTable(1);
            datatable.getDefaultCell().setBorder(0);
            // 标题行
            int[] headerwidths = new int[1];
            int columnPercent = 100;
            Arrays.fill(headerwidths, columnPercent);
            datatable.setWidths(headerwidths);
            datatable.setWidthPercentage(100); // percentage
            datatable.setSpacingAfter(0);
            datatable.setSpacingBefore(0);
            datatable.getDefaultCell().setPadding(0);
//            datatable.getDefaultCell().setFixedHeight(30);
            datatable.addCell(createDataCellTitle(title, pdfColumnNum,Element.ALIGN_CENTER));
            // 内容行
            for (int i = 0; i < list.size(); i++) {
                // 打印行数据
                PdfRow row = (PdfRow) list.get(i);
                int columnCount = row.getColumnCount();
                PdfPTable rowTable = new PdfPTable(columnCount);
                rowTable.setSpacingAfter(0);
                rowTable.setSpacingBefore(0);
                rowTable.setWidths(row.getWidthPercent());
                datatable.setWidthPercentage(100); // percentage

                for(int c=0;c<columnCount;c++){
                    rowTable.addCell(createDataCell(row.getContent()[c],row.getAlign()[c]));
                }
                datatable.addCell(rowTable);
            }
            document.add(datatable);



        } catch (Exception de) {
            de.printStackTrace();
        } finally {
            // step5
            document.close();
        }

    }


    /**
     * 根据字符串列表及指定列数，生成默写表格，会生成空白行
     * @param list
     * @param columnCount
     * @return
     */
    public static List<PdfRow> getPdfList(List<String> list,int columnCount) {
        return  getPdfDataList(list,columnCount,true);
    }
    public static List<PdfRow> getPdfList(List<String> list,int columnCount,boolean containBlankLine) {
        return  getPdfDataList(list,columnCount,containBlankLine);
    }
    public static List<PdfRow> getPdfDataList(List<String> list,int columnCount,boolean containBlankLine){
        List<PdfRow> pdfList = new ArrayList<>();
        String[] tmpArr = new String[columnCount];
        int[] widthPercent = new int[columnCount];
        Integer[] align = new Integer[columnCount];
        Arrays.fill(align,1);
        Arrays.fill(widthPercent,100/columnCount);
        for(int k=0,n=list.size();k<n;k++) {
            if (k % columnCount  == 0 & k > 0) {
                pdfList.add(new PdfRow(tmpArr, columnCount, widthPercent, align, 12, 0));
                // 加空行
                if (containBlankLine) {
                    pdfList.add(new PdfRow(new String[columnCount], columnCount, widthPercent, align, 12, 0));
                }
                tmpArr = new String[7];
            }
            tmpArr[k % columnCount] = list.get(k);
        }
        if (list.size() > 0) {
            pdfList.add(new PdfRow(tmpArr, columnCount, widthPercent, align, 12, 0));
            // 加空行
            if (containBlankLine) {
                pdfList.add(new PdfRow(new String[columnCount], columnCount, widthPercent, align, 12, 0));
            }
        }
        return pdfList;
    }

}
