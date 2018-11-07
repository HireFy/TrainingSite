package com.hk.TS.pojo;

import java.sql.Timestamp;

public class News {
    private long id;
    private String title;
    private long author_id;
    private String content;
    private Timestamp create_time;
    private long type_id;
    private long click_count;

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author_id=" + author_id +
                ", content='" + content + '\'' +
                ", create_time=" + create_time +
                ", type_id=" + type_id +
                ", click_count=" + click_count +
                '}';
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getAuthor_id() {
        return author_id;
    }

    public void setAuthor_id(long author_id) {
        this.author_id = author_id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Timestamp create_time) {
        this.create_time = create_time;
    }

    public long getType_id() {
        return type_id;
    }

    public void setType_id(long type_id) {
        this.type_id = type_id;
    }

    public long getClick_count() {
        return click_count;
    }

    public void setClick_count(long click_count) {
        this.click_count = click_count;
    }

}
