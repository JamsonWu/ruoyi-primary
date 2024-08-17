package com.ruoyi.app.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 诗词与日积月累明细对象 app_chinese_poetry_accum_detail
 * 
 * @author ruoyi
 * @date 2024-05-25
 */
public class AppChinesePoetryAccumDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** 主表系统ID */
    @Excel(name = "主表系统ID")
    private Long pSysId;

    /** 诗词句 */
    @Excel(name = "诗词句")
    private String sentense;

    /** 拼音 */
    @Excel(name = "拼音")
    private String pinyin;

    /** 句子含义 */
    @Excel(name = "句子含义")
    private String mean;

    /** 字词 */
    @Excel(name = "字词")
    private String word;

    /** 字词含义 */
    @Excel(name = "字词含义")
    private String wordMean;

    /** 字词拼音 */
    @Excel(name = "字词拼音")
    private String wordPinyin;

    /** 哲理 */
    @Excel(name = "哲理")
    private String truth;

    /** 提问 */
    @Excel(name = "提问")
    private String question;

    /** 名言 */
    @Excel(name = "名言")
    private Integer isVip;

    /** 内部序号 */
    @Excel(name = "内部序号")
    private Integer innerSortNo;

    /** 查询字(比如春夏秋冬颜色花) */
    @Excel(name = "查询字(比如春夏秋冬颜色花)")
    private String wordSearch;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setpSysId(Long pSysId) 
    {
        this.pSysId = pSysId;
    }

    public Long getpSysId() 
    {
        return pSysId;
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
    public void setWordPinyin(String wordPinyin) 
    {
        this.wordPinyin = wordPinyin;
    }

    public String getWordPinyin() 
    {
        return wordPinyin;
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
    public void setInnerSortNo(Integer innerSortNo) 
    {
        this.innerSortNo = innerSortNo;
    }

    public Integer getInnerSortNo() 
    {
        return innerSortNo;
    }
    public void setWordSearch(String wordSearch) 
    {
        this.wordSearch = wordSearch;
    }

    public String getWordSearch() 
    {
        return wordSearch;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("pSysId", getpSysId())
            .append("sentense", getSentense())
            .append("pinyin", getPinyin())
            .append("mean", getMean())
            .append("word", getWord())
            .append("wordMean", getWordMean())
            .append("wordPinyin", getWordPinyin())
            .append("truth", getTruth())
            .append("question", getQuestion())
            .append("isVip", getIsVip())
            .append("innerSortNo", getInnerSortNo())
            .append("wordSearch", getWordSearch())
            .append("createTime", getCreateTime())
            .append("createBy", getCreateBy())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
