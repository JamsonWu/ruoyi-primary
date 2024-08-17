package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 诗词明细对象 app_chinese_poetry_detail
 * 
 * @author ruoyi
 * @date 2024-05-24
 */
public class AppChinesePoetryDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 题目 */
    @Excel(name = "题目")
    private String name;

    /** 题目字词 */
    private String titleWord;

    /** 题目字词含义 */
    @Excel(name = "题目字词含义")
    private String titleWordMean;

    /** 题目拼音字 */
    private String titlePinyinWord;

    /** 年级 */
    @Excel(name = "年级")
    private Integer grade;

    /** 学期 */
    @Excel(name = "学期")
    private Integer term;

    /** 单元 */
    @Excel(name = "单元")
    private Long unit;

    /** 作者 */
    @Excel(name = "作者")
    private String author;

    /** 朝代 */
    @Excel(name = "朝代")
    private String dynasty;

    /** 句子 */
    @Excel(name = "句子")
    private String sentense;

    /** 拼音 */
    @Excel(name = "拼音")
    private String pinyin;

    /** 含义 */
    @Excel(name = "含义")
    private String mean;

    /** 字词 */
    private String word;

    /** 字词注释 */
    @Excel(name = "字词注释")
    private String wordMean;

    /** 拼音字词 */
    private String pinyinWord;

    /** 道理 */
    private String truth;

    /** 问题 */
    private String question;

    /** 重点句 */
    private Integer isVip;

    /** 内部序号 */
    private Long innerSortNo;

    /** 内容分类 */
    @Excel(name = "内容分类")
    private Long categoryId;

    /** 子类 */
    private Long childCategoryId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setTitleWord(String titleWord) 
    {
        this.titleWord = titleWord;
    }

    public String getTitleWord() 
    {
        return titleWord;
    }
    public void setTitleWordMean(String titleWordMean) 
    {
        this.titleWordMean = titleWordMean;
    }

    public String getTitleWordMean() 
    {
        return titleWordMean;
    }
    public void setTitlePinyinWord(String titlePinyinWord) 
    {
        this.titlePinyinWord = titlePinyinWord;
    }

    public String getTitlePinyinWord() 
    {
        return titlePinyinWord;
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
    public void setUnit(Long unit) 
    {
        this.unit = unit;
    }

    public Long getUnit() 
    {
        return unit;
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
    public void setSentense(String sentense) 
    {
        this.sentense = sentense;
    }

    public String getSentense() 
    {
        return sentense;
    }
    public void setPinyin(String pinyin) 
    {
        this.pinyin = pinyin;
    }

    public String getPinyin() 
    {
        return pinyin;
    }
    public void setMean(String mean) 
    {
        this.mean = mean;
    }

    public String getMean() 
    {
        return mean;
    }
    public void setWord(String word) 
    {
        this.word = word;
    }

    public String getWord() 
    {
        return word;
    }
    public void setWordMean(String wordMean) 
    {
        this.wordMean = wordMean;
    }

    public String getWordMean() 
    {
        return wordMean;
    }
    public void setPinyinWord(String pinyinWord) 
    {
        this.pinyinWord = pinyinWord;
    }

    public String getPinyinWord() 
    {
        return pinyinWord;
    }
    public void setTruth(String truth) 
    {
        this.truth = truth;
    }

    public String getTruth() 
    {
        return truth;
    }
    public void setQuestion(String question) 
    {
        this.question = question;
    }

    public String getQuestion() 
    {
        return question;
    }
    public void setIsVip(Integer isVip) 
    {
        this.isVip = isVip;
    }

    public Integer getIsVip() 
    {
        return isVip;
    }
    public void setInnerSortNo(Long innerSortNo) 
    {
        this.innerSortNo = innerSortNo;
    }

    public Long getInnerSortNo() 
    {
        return innerSortNo;
    }
    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }
    public void setChildCategoryId(Long childCategoryId) 
    {
        this.childCategoryId = childCategoryId;
    }

    public Long getChildCategoryId() 
    {
        return childCategoryId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("titleWord", getTitleWord())
            .append("titleWordMean", getTitleWordMean())
            .append("titlePinyinWord", getTitlePinyinWord())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("author", getAuthor())
            .append("dynasty", getDynasty())
            .append("sentense", getSentense())
            .append("pinyin", getPinyin())
            .append("mean", getMean())
            .append("word", getWord())
            .append("wordMean", getWordMean())
            .append("pinyinWord", getPinyinWord())
            .append("truth", getTruth())
            .append("question", getQuestion())
            .append("isVip", getIsVip())
            .append("innerSortNo", getInnerSortNo())
            .append("categoryId", getCategoryId())
            .append("childCategoryId", getChildCategoryId())
            .toString();
    }
}
