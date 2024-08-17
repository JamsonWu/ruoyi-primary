package com.ruoyi.app.domain;

import com.ruoyi.common.annotation.Excel;

public class AppChinesePoetryDTO {

    /** 系统ID */
    private Long sysId;

    public Long getSysId() {
        return sysId;
    }

    public void setSysId(Long sysId) {
        this.sysId = sysId;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getTerm() {
        return term;
    }

    public void setTerm(Integer term) {
        this.term = term;
    }

    public Integer getUnit() {
        return unit;
    }

    public void setUnit(Integer unit) {
        this.unit = unit;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDynasty() {
        return dynasty;
    }

    public void setDynasty(String dynasty) {
        this.dynasty = dynasty;
    }

    public String getTitlePinyin() {
        return titlePinyin;
    }

    public void setTitlePinyin(String titlePinyin) {
        this.titlePinyin = titlePinyin;
    }

    public String getTitleWord() {
        return titleWord;
    }

    public void setTitleWord(String titleWord) {
        this.titleWord = titleWord;
    }

    public String getTitleWordMean() {
        return titleWordMean;
    }

    public void setTitleWordMean(String titleWordMean) {
        this.titleWordMean = titleWordMean;
    }

    public String getTitleWordPinyin() {
        return titleWordPinyin;
    }

    public void setTitleWordPinyin(String titleWordPinyin) {
        this.titleWordPinyin = titleWordPinyin;
    }

    public String getEmotion() {
        return emotion;
    }

    public void setEmotion(String emotion) {
        this.emotion = emotion;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getChildCategoryId() {
        return childCategoryId;
    }

    public void setChildCategoryId(String childCategoryId) {
        this.childCategoryId = childCategoryId;
    }

    public AppChinesePoetryAccumDetail[] getContent() {
        return content;
    }

    public void setContent(AppChinesePoetryAccumDetail[] content) {
        this.content = content;
    }

    /** 年级 */
    private Integer grade;

    /** 学期 */
    private Integer term;

    public Integer getMustWrite() {
        return mustWrite;
    }

    public void setMustWrite(Integer mustWrite) {
        this.mustWrite = mustWrite;
    }

    /** 单元 */
    private Integer unit;

    /** 标题 */
    private String title;

    /** 作者 */
    private String author;

    /** 朝代 */
    private String dynasty;

    /** 拼音 */
    private String titlePinyin;

    /** 标题字 */
    private String titleWord;

    /** 标题字义 */
    private String titleWordMean;

    /** 标题字拼音 */
    private String titleWordPinyin;

    /** 表达情感 */
    private String emotion;

    /** 诗词分类 */
    private String categoryId;

    /** 小类 */
    private String childCategoryId;
    private Integer mustWrite;

    /**
     * 诗句内容
     */
    AppChinesePoetryAccumDetail[] content;
}
