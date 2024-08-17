package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 小学英语单词词组对象 app_english_lesson
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public class AppEnglishLesson extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 年级 */
    @Excel(name = "年级")
    private Integer grade;

    /** 学期 */
    @Excel(name = "学期")
    private Integer term;

    /** 单元 */
    @Excel(name = "单元")
    private Integer unit;

    /** 单词 */
    @Excel(name = "单词")
    private String word;

    /** 发音 */
    @Excel(name = "发音")
    private String pronounce;

    /** 中文 */
    @Excel(name = "中文")
    private String chinese;

    /** 数据分类 */
    @Excel(name = "数据分类")
    private Integer dataType;

    /** 序号 */
    @Excel(name = "序号")
    private Long sortNo;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
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
    public void setWord(String word) 
    {
        this.word = word;
    }

    public String getWord() 
    {
        return word;
    }
    public void setPronounce(String pronounce) 
    {
        this.pronounce = pronounce;
    }

    public String getPronounce() 
    {
        return pronounce;
    }
    public void setChinese(String chinese) 
    {
        this.chinese = chinese;
    }

    public String getChinese() 
    {
        return chinese;
    }
    public void setDataType(Integer dataType) 
    {
        this.dataType = dataType;
    }

    public Integer getDataType() 
    {
        return dataType;
    }
    public void setSortNo(Long sortNo) 
    {
        this.sortNo = sortNo;
    }

    public Long getSortNo() 
    {
        return sortNo;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("word", getWord())
            .append("pronounce", getPronounce())
            .append("chinese", getChinese())
            .append("dataType", getDataType())
            .append("sortNo", getSortNo())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
