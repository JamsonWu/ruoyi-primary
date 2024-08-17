package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * JSON格式完整数据对象 app_chinese_poetry_json
 * 
 * @author ruoyi
 * @date 2024-05-28
 */
public class AppChinesePoetryJson extends BaseEntity
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

    /** 标题 */
    @Excel(name = "标题")
    private String title;

    /** 诗词分类 */
    @Excel(name = "诗词分类")
    private String categoryId;

    /** json数据 */
    @Excel(name = "json数据")
    private String jsonData;

    /** 默写 */
    @Excel(name = "默写")
    private Integer mustWrite;

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
    public void setCategoryId(String categoryId) 
    {
        this.categoryId = categoryId;
    }

    public String getCategoryId() 
    {
        return categoryId;
    }
    public void setJsonData(String jsonData) 
    {
        this.jsonData = jsonData;
    }

    public String getJsonData() 
    {
        return jsonData;
    }
    public void setMustWrite(Integer mustWrite) 
    {
        this.mustWrite = mustWrite;
    }

    public Integer getMustWrite() 
    {
        return mustWrite;
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
            .append("categoryId", getCategoryId())
            .append("jsonData", getJsonData())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("mustWrite", getMustWrite())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
