package com.kgc.bokeproject.pojo;

public class LikeArticle {
    private Integer id;

    private Integer userId;

    private Integer essayTypeId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getEssayTypeId() {
        return essayTypeId;
    }

    public void setEssayTypeId(Integer essayTypeId) {
        this.essayTypeId = essayTypeId;
    }
}