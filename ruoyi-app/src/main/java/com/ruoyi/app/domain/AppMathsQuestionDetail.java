package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 数学错题明细对象 app_maths_question_detail
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public class AppMathsQuestionDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 序号 */
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

    /** 问题类别 */
    @Excel(name = "问题类别")
    private Long questionType;

    /** 问题 */
    @Excel(name = "问题")
    private String question;

    /** 答案 */
    @Excel(name = "答案")
    private String answer;

    /** 错误次数 */
    @Excel(name = "错误次数")
    private Long errorTimes;

    /** 最后答错日期 */
    @Excel(name = "最后答错日期")
    private String lastErrorDate;

    /** 用户ID */
    private Long userId;

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
    public void setQuestionType(Long questionType) 
    {
        this.questionType = questionType;
    }

    public Long getQuestionType() 
    {
        return questionType;
    }
    public void setQuestion(String question) 
    {
        this.question = question;
    }

    public String getQuestion() 
    {
        return question;
    }
    public void setAnswer(String answer) 
    {
        this.answer = answer;
    }

    public String getAnswer() 
    {
        return answer;
    }
    public void setErrorTimes(Long errorTimes) 
    {
        this.errorTimes = errorTimes;
    }

    public Long getErrorTimes() 
    {
        return errorTimes;
    }
    public void setLastErrorDate(String lastErrorDate) 
    {
        this.lastErrorDate = lastErrorDate;
    }

    public String getLastErrorDate() 
    {
        return lastErrorDate;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("questionType", getQuestionType())
            .append("question", getQuestion())
            .append("answer", getAnswer())
            .append("errorTimes", getErrorTimes())
            .append("lastErrorDate", getLastErrorDate())
            .append("userId", getUserId())
            .toString();
    }
}
