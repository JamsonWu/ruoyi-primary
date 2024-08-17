package com.ruoyi.common.core.pdf;

public class PdfRow {
    /**
     * PDF内容数组
     */
    private String[] content;

    /**
     * 列宽百分比
     */
    private int[] widthPercent;

    public String[] getContent() {
        return content;
    }

    public void setContent(String[] content) {
        this.content = content;
    }

    public int[] getWidthPercent() {
        return widthPercent;
    }

    public void setWidthPercent(int[] widthPercent) {
        this.widthPercent = widthPercent;
    }

    public Integer getColumnCount() {
        return columnCount;
    }

    public void setColumnCount(Integer columnCount) {
        this.columnCount = columnCount;
    }

    public Integer[] getAlign() {
        return align;
    }

    public void setAlign(Integer[] align) {
        this.align = align;
    }

    public Integer getFontSize() {
        return fontSize;
    }

    public void setFontSize(Integer fontSize) {
        this.fontSize = fontSize;
    }

    public Integer getFontStyle() {
        return fontStyle;
    }

    public void setFontStyle(Integer fontStyle) {
        this.fontStyle = fontStyle;
    }

    /**
     * 当前行列数
     */
    private Integer columnCount;

    /**
     * 居中格式：0 居左，1居中,2居右
     */
    private Integer[] align;

    /**
     * 字体大小
     */
    private Integer fontSize;
    /**
     * 字体类型：参考com.lowagie.text中的Font定义
     */
    private Integer fontStyle;

    public PdfRow(String[] content,Integer columnCount,int[] widthPercent,Integer[] align,Integer fontSize,Integer fontStyle){
        this.content = content;
        this.columnCount = columnCount;
        this.widthPercent = widthPercent;
        this.align = align;
        this.fontSize = fontSize;
        this.fontSize = fontStyle;
    }
    public PdfRow(){}

}
