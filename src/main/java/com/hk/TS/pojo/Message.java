package com.hk.TS.pojo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Message {
    private Long id;
    private String content;
    private String mail;
    private Timestamp createTime;
    private Long targetMessageId;

    public Message(){

    }

    public Message(Long id, String content, String mail, Timestamp createTime, Long targetMessageId) {
        this.id = id;
        this.content = content;
        this.mail = mail;
        this.createTime = createTime;
        this.targetMessageId = targetMessageId;
    }

    public Message(String content, String mail, Timestamp createTime, Long targetMessageId) {
        this.content = content;
        this.mail = mail;
        this.createTime = createTime;
        this.targetMessageId = targetMessageId;
    }

    public Message(String content, String mail) {
        this.content = content;
        this.mail = mail;
        this.createTime = new Timestamp(System.currentTimeMillis());
    }

    public Message(String content, String mail, Long targetMessageId) {
        this.content = content;
        this.mail = mail;
        this.createTime = new Timestamp(System.currentTimeMillis());
        this.targetMessageId = targetMessageId;
    }

    public Message(Long id, String content, String mail) {
        this.id = id;
        this.content = content;
        this.mail = mail;
    }

    public Message(Long id, String content) {
        this.id = id;
        this.content = content;
    }
}
