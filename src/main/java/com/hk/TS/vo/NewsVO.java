package com.hk.TS.vo;

import com.hk.TS.pojo.News;
import com.hk.TS.pojo.Person;
import lombok.Data;

import java.sql.Timestamp;

@Data
public class NewsVO {
    private Long id;
    private String title;
    private String authorName;
    private String content;
    private Timestamp createTime;
    private Long newsTypeId;
    private String newsTypeName;
    private Long clickCount;

    public NewsVO() {

    }
}
