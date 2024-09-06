package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 数学错题主对象 app_maths_question
 * 
 * @author ruoyi
 * @date 2024-09-06
 */
public class AppMathsQuestion extends BaseEntity
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

    /** 提交日期 */
    @Excel(name = "提交日期")
    private String questionDate;

    /** 问题 */
    @Excel(name = "问题")
    private String quetion;

    /** 错解 */
    @Excel(name = "错解")
    private String errorAnswer;

    /** 正确 */
    @Excel(name = "正确")
    private String answer;

    /** 错解次数 */
    @Excel(name = "错解次数")
    private Long errorTimes;

    /** 排序号 */
    @Excel(name = "排序号")
    private Long sortNo;

    /** 用户ID */
    @Excel(name = "用户ID")
    private Long userId;

    /** 解答图片 */
    @Excel(name = "解答图片")
    private String answerImgUrl;

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
    public void setQuestionDate(String questionDate) 
    {
        this.questionDate = questionDate;
    }

    public String getQuestionDate() 
    {
        return questionDate;
    }
    public void setQuetion(String quetion) 
    {
        this.quetion = quetion;
    }

    public String getQuetion() 
    {
        return quetion;
    }
    public void setErrorAnswer(String errorAnswer) 
    {
        this.errorAnswer = errorAnswer;
    }

    public String getErrorAnswer() 
    {
        return errorAnswer;
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
    public void setSortNo(Long sortNo) 
    {
        this.sortNo = sortNo;
    }

    public Long getSortNo() 
    {
        return sortNo;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setAnswerImgUrl(String answerImgUrl) 
    {
        this.answerImgUrl = answerImgUrl;
    }

    public String getAnswerImgUrl() 
    {
        return answerImgUrl;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("grade", getGrade())
            .append("term", getTerm())
            .append("unit", getUnit())
            .append("questionType", getQuestionType())
            .append("questionDate", getQuestionDate())
            .append("quetion", getQuetion())
            .append("errorAnswer", getErrorAnswer())
            .append("answer", getAnswer())
            .append("errorTimes", getErrorTimes())
            .append("sortNo", getSortNo())
            .append("userId", getUserId())
            .append("answerImgUrl", getAnswerImgUrl())
            .toString();
    }
}
