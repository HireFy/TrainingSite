package com.hk.TS.vo;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class PersonVo {
    private Long id;
    private String name;
    private Integer age;
    private String gender;
    private String password;
    private String mail;
    private Long roleId;
    private String roleType;
    private Timestamp createTime;
    private String info;

    public PersonVo() {

    }
}
