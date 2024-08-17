package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 数学概念对象 app_maths_concept
 * 
 * @author ruoyi
 * @date 2024-06-08
 */
public class AppMathsConcept extends BaseEntity
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

    /** 章节 */
    @Excel(name = "章节")
    private Long chapterId;

    /** 小节 */
    @Excel(name = "小节")
    private String sectionTitle;

    /** 概念 */
    @Excel(name = "概念")
    private String concept;

    /** 表达式 */
    @Excel(name = "表达式")
    private String expression;

    /** 示例 */
    @Excel(name = "示例")
    private String sample;

    /** 答案 */
    @Excel(name = "答案")
    private String answer;

    /** 难度星 */
    @Excel(name = "难度星")
    private Integer diffStar;

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
    public void setChapterId(Long chapterId) 
    {
        this.chapterId = chapterId;
    }

    public Long getChapterId() 
    {
        return chapterId;
    }
    public void setSectionTitle(String sectionTitle) 
    {
        this.sectionTitle = sectionTitle;
    }

    public String getSectionTitle() 
    {
        return sectionTitle;
    }
    public void setConcept(String concept) 
    {
        this.concept = concept;
    }

    public String getConcept() 
    {
        return concept;
    }
    public void setExpression(String expression) 
    {
        this.expression = expression;
    }

    public String getExpression() 
    {
        return expression;
    }
    public void setSample(String sample) 
    {
        this.sample = sample;
    }

    public String getSample() 
    {
        return sample;
    }
    public void setAnswer(String answer) 
    {
        this.answer = answer;
    }

    public String getAnswer() 
    {
        return answer;
    }
    public void setDiffStar(Integer diffStar) 
    {
        this.diffStar = diffStar;
    }

    public Integer getDiffStar() 
    {
        return diffStar;
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
            .append("chapterId", getChapterId())
            .append("sectionTitle", getSectionTitle())
            .append("concept", getConcept())
            .append("expression", getExpression())
            .append("sample", getSample())
            .append("answer", getAnswer())
            .append("diffStar", getDiffStar())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("sortNo", getSortNo())
            .toString();
    }
}
