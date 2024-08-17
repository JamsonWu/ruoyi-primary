package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 诗词与日积月累汇总对象 app_chinese_poetry
 * 
 * @author ruoyi
 * @date 2024-05-28
 */
public class AppChinesePoetry extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 系统ID */
    @Excel(name = "系统ID")
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

    /** 类别 */
    @Excel(name = "类别")
    private String categoryId;

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 朝代 */
    @Excel(name = "朝代")
    private String dynasty;

    /** 作者 */
    @Excel(name = "作者")
    private String author;

    /** 内容 */
    @Excel(name = "内容")
    private String content;

    /** 默写 */
    @Excel(name = "默写")
    private Integer mustWrite;

    /** 拼音 */
    @Excel(name = "拼音")
    private String pinyin;

    /** 注释 */
    @Excel(name = "注释")
    private String comment;

    /** 译文 */
    @Excel(name = "译文")
    private String translation;

    /** 分类1 */
    @Excel(name = "分类1")
    private String childCategoryId;

    /** 背景 */
    @Excel(name = "背景")
    private String background;

    /** 表达情感 */
    @Excel(name = "表达情感")
    private String emotion;

    /** 道理 */
    @Excel(name = "道理")
    private String truth;

    /** 查询字 */
    @Excel(name = "查询字")
    private String wordSearch;

    /** 提问 */
    @Excel(name = "提问")
    private String question;

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
    public void setCategoryId(String categoryId) 
    {
        this.categoryId = categoryId;
    }

    public String getCategoryId() 
    {
        return categoryId;
    }
    public void setTitle(String title) 
    {
        this.title = title;
    }

    public String getTitle() 
    {
        return title;
    }
    public void setDynasty(String dynasty) 
    {
        this.dynasty = dynasty;
    }

    public String getDynasty() 
    {
        return dynasty;
    }
    public void setAuthor(String author) 
    {
        this.author = author;
    }

    public String getAuthor() 
    {
        return author;
    }
    public void setContent(String content) 
    {
        this.content = content;
    }

    public String getContent() 
    {
        return content;
    }
    public void setMustWrite(Integer mustWrite) 
    {
        this.mustWrite = mustWrite;
    }

    public Integer getMustWrite() 
    {
        return mustWrite;
    }
    public void setPinyin(String pinyin) 
    {
        this.pinyin = pinyin;
    }

    public String getPinyin() 
    {
        return pinyin;
    }
    public void setComment(String comment) 
    {
        this.comment = comment;
    }

    public String getComment() 
    {
        return comment;
    }
    public void setTranslation(String translation) 
    {
        this.translation = translation;
    }

    public String getTranslation() 
    {
        return translation;
    }
    public void setChildCategoryId(String childCategoryId) 
    {
        this.childCategoryId = childCategoryId;
    }

    public String getChildCategoryId() 
    {
        return childCategoryId;
    }
    public void setBackground(String background) 
    {
        this.background = background;
    }

    public String getBackground() 
    {
        return background;
    }
    public void setEmotion(String emotion) 
    {
        this.emotion = emotion;
    }

    public String getEmotion() 
    {
        return emotion;
    }
    public void setTruth(String truth) 
    {
        this.truth = truth;
    }

    public String getTruth() 
    {
        return truth;
    }
    public void setWordSearch(String wordSearch) 
    {
        this.wordSearch = wordSearch;
    }

    public String getWordSearch() 
    {
        return wordSearch;
    }
    public void setQuestion(String question) 
    {
        this.question = question;
    }

    public String getQuestion() 
    {
        return question;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("sysId", getSysId())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("categoryId", getCategoryId())
            .append("title", getTitle())
            .append("dynasty", getDynasty())
            .append("author", getAuthor())
            .append("content", getContent())
            .append("mustWrite", getMustWrite())
            .append("pinyin", getPinyin())
            .append("comment", getComment())
            .append("translation", getTranslation())
            .append("childCategoryId", getChildCategoryId())
            .append("background", getBackground())
            .append("emotion", getEmotion())
            .append("truth", getTruth())
            .append("wordSearch", getWordSearch())
            .append("question", getQuestion())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
