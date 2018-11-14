package com.hk.TS.pojo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class News {
    private Long id;
    private String title;
    private Long authorId;
    private String content;
    private Timestamp createTime;
    private Long newsTypeId;
    private Long clickCount;

    public News() {

    }

    public News(Long id, String title, Long authorId, String content, Timestamp createTime, Long newsTypeId, Long clickCount) {
        this.id = id;
        this.title = title;
        this.authorId = authorId;
        this.content = content;
        this.createTime = createTime;
        this.newsTypeId = newsTypeId;
        this.clickCount = clickCount;
    }

    public News(String title, Long authorId, String content, Timestamp createTime, Long newsTypeId, Long clickCount) {
        this.title = title;
        this.authorId = authorId;
        this.content = content;
        this.createTime = createTime;
        this.newsTypeId = newsTypeId;
        this.clickCount = clickCount;
    }

    public News(String title, Long authorId, String content, Long newsTypeId) {
        this.title = title;
        this.authorId = authorId;
        this.content = content;
        this.createTime = new Timestamp(System.currentTimeMillis());
        this.newsTypeId = newsTypeId;
    }

    public News(String title, Long authorId, String content) {
        this.title = title;
        this.authorId = authorId;
        this.content = content;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public void setCreateTime(long currentTimeMillis) {
        this.setCreateTime(new Timestamp(currentTimeMillis));
    }
}
