package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 单词发音对照对象 app_english_pronounce
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public class AppEnglishPronounce extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 单词 */
    @Excel(name = "单词")
    private String word;

    /** 发音 */
    @Excel(name = "发音")
    private String pronounce;

    /** 中文 */
    @Excel(name = "中文")
    private String chinese;

    /** 单词分类 */
    @Excel(name = "单词分类")
    private Integer wordType;

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
    public void setWordType(Integer wordType) 
    {
        this.wordType = wordType;
    }

    public Integer getWordType() 
    {
        return wordType;
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
            .append("word", getWord())
            .append("pronounce", getPronounce())
            .append("chinese", getChinese())
            .append("wordType", getWordType())
            .append("sortNo", getSortNo())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
