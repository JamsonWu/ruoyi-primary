package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 诗词与日积月累主对象 app_chinese_poetry_accum
 * 
 * @author ruoyi
 * @date 2024-05-28
 */
public class AppChinesePoetryAccum extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 系统分配的ID */
    @Excel(name = "系统分配的ID")
    private Long sysId;

    /** 年级 */
    @Excel(name = "年级")
    private Integer grade;

    /** 学期 */
    @Excel(name = "学期")
    private Integer term;

    /** 单元 */
    @Excel(name = "单元")
    private Integer unit;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 作者 */
    @Excel(name = "作者")
    private String author;

    /** 朝代 */
    @Excel(name = "朝代")
    private String dynasty;

    /** 拼音 */
    @Excel(name = "拼音")
    private String titlePinyin;

    /** 标题字 */
    @Excel(name = "标题字")
    private String titleWord;

    /** 默写 */
    @Excel(name = "默写")
    private Integer mustWrite;

    /** 标题字义 */
    @Excel(name = "标题字义")
    private String titleWordMean;

    /** 标题字拼音 */
    @Excel(name = "标题字拼音")
    private String titleWordPinyin;

    /** 表达情感 */
    @Excel(name = "表达情感")
    private String emotion;

    /** 诗词分类 */
    @Excel(name = "诗词分类")
    private String categoryId;

    /** 小类 */
    @Excel(name = "小类")
    private String childCategoryId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setSysId(Long sysId) 
    {
        this.sysId = sysId;
    }

    public Long getSysId() 
    {
        return sysId;
    }
    public void setGrade(Integer grade) 
    {
        this.grade = grade;
    }

    public Integer getGrade() 
    {
        return grade;
    }
    public void setTerm(Integer term) 
    {
        this.term = term;
    }

    public Integer getTerm() 
    {
        return term;
    }
    public void setUnit(Integer unit) 
    {
        this.unit = unit;
    }

    public Integer getUnit() 
    {
        return unit;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setAuthor(String author) 
    {
        this.author = author;
    }

    public String getAuthor() 
    {
        return author;
    }
    public void setDynasty(String dynasty) 
    {
        this.dynasty = dynasty;
    }

    public String getDynasty() 
    {
        return dynasty;
    }
    public void setTitlePinyin(String titlePinyin) 
    {
        this.titlePinyin = titlePinyin;
    }

    public String getTitlePinyin() 
    {
        return titlePinyin;
    }
    public void setTitleWord(String titleWord) 
    {
        this.titleWord = titleWord;
    }

    public String getTitleWord() 
    {
        return titleWord;
    }
    public void setMustWrite(Integer mustWrite) 
    {
        this.mustWrite = mustWrite;
    }

    public Integer getMustWrite() 
    {
        return mustWrite;
    }
    public void setTitleWordMean(String titleWordMean) 
    {
        this.titleWordMean = titleWordMean;
    }

    public String getTitleWordMean() 
    {
        return titleWordMean;
    }
    public void setTitleWordPinyin(String titleWordPinyin) 
    {
        this.titleWordPinyin = titleWordPinyin;
    }

    public String getTitleWordPinyin() 
    {
        return titleWordPinyin;
    }
    public void setEmotion(String emotion) 
    {
        this.emotion = emotion;
    }

    public String getEmotion() 
    {
        return emotion;
    }
    public void setCategoryId(String categoryId) 
    {
        this.categoryId = categoryId;
    }

    public String getCategoryId() 
    {
        return categoryId;
    }
    public void setChildCategoryId(String childCategoryId) 
    {
        this.childCategoryId = childCategoryId;
    }

    public String getChildCategoryId() 
    {
        return childCategoryId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("sysId", getSysId())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("title", getTitle())
            .append("author", getAuthor())
            .append("dynasty", getDynasty())
            .append("titlePinyin", getTitlePinyin())
            .append("titleWord", getTitleWord())
            .append("mustWrite", getMustWrite())
            .append("titleWordMean", getTitleWordMean())
            .append("titleWordPinyin", getTitleWordPinyin())
            .append("emotion", getEmotion())
            .append("categoryId", getCategoryId())
            .append("childCategoryId", getChildCategoryId())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
