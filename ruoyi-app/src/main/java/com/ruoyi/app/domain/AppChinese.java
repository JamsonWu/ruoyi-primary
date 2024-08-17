package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 语文词语对象 app_chinese
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public class AppChinese extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer id;

    /** 年级 */
    @Excel(name = "年级")
    private Integer grade;

    /** 学期 */
    @Excel(name = "学期")
    private Integer term;

    /** 单元 */
    @Excel(name = "单元")
    private Integer unit;

    /** 第几课 */
    @Excel(name = "第几课")
    private Integer lessonNo;

    /** 词语 */
    @Excel(name = "词语")
    private String word;

    /** 含义 */
    @Excel(name = "含义")
    private String mean;

    /** 拼音 */
    @Excel(name = "拼音")
    private String pinyin;

    /** 词语分类 */
    @Excel(name = "词语分类")
    private Integer wordType;

    /** 排序 */
    @Excel(name = "排序")
    private Integer wordSort;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
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
    public void setLessonNo(Integer lessonNo) 
    {
        this.lessonNo = lessonNo;
    }

    public Integer getLessonNo() 
    {
        return lessonNo;
    }
    public void setWord(String word) 
    {
        this.word = word;
    }

    public String getWord() 
    {
        return word;
    }
    public void setMean(String mean) 
    {
        this.mean = mean;
    }

    public String getMean() 
    {
        return mean;
    }
    public void setPinyin(String pinyin) 
    {
        this.pinyin = pinyin;
    }

    public String getPinyin() 
    {
        return pinyin;
    }
    public void setWordType(Integer wordType) 
    {
        this.wordType = wordType;
    }

    public Integer getWordType() 
    {
        return wordType;
    }
    public void setWordSort(Integer wordSort) 
    {
        this.wordSort = wordSort;
    }

    public Integer getWordSort() 
    {
        return wordSort;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("lessonNo", getLessonNo())
            .append("word", getWord())
            .append("mean", getMean())
            .append("pinyin", getPinyin())
            .append("wordType", getWordType())
            .append("wordSort", getWordSort())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
