package com.ruoyi.app.domain;

public class AppChinesePoetryExt extends AppChinesePoetry{
    private static final long serialVersionUID = 1L;

    public Integer getIsVip() {
        return isVip;
    }

    public void setIsVip(Integer isVip) {
        this.isVip = isVip;
    }

    public Long getChildId() {
        return childId;
    }

    public void setChildId(Long childId) {
        this.childId = childId;
    }

    private Integer isVip;
    private Long childId;
}
