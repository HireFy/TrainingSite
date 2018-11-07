package com.hk.TS.pojo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class Message {
    private Long id;
    private String content;
    private String mail;
    private Timestamp createTime;
    private Message targetId;

    public Message(){

    }

    public Message(Long id,String content,String mail,Message targetId){
        this.id = id;
        this.content = content;
        this.mail = mail;
        this.targetId = targetId;

    }

    public Message(String content,String mail,Message targetId){
        this.content = content;
        this.mail = mail;
        this.targetId = targetId;

    }
}
