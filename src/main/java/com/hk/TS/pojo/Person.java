package com.hk.TS.pojo;

import lombok.Data;

import java.sql.Timestamp;
import java.util.Map;

@Data
public class Person {
    private Long id;
    private String name;
    private Integer age;
    private String gender;
    private String password;
    private String mail;
    private Long roleId;
    private Timestamp createTime;
    private String info;

    public Person() {
    }

    public Person(String name, Integer age, String gender, String password, Long roleId, String mail,String info) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.password = password;
        this.mail = mail;
        this.roleId = roleId;
        this.info = info;
    }

    /*传入时间参数*/
    public Person(String name, Integer age, String gender, String mail, String password, Long roleId, Timestamp createTime, String info) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.password = password;
        this.mail = mail;
        this.roleId = roleId;
        this.createTime = createTime;
        this.info = info;
    }

    public Person(Long id, String name, Integer age, String gender, String password, Long roleId, Timestamp createTime, String info) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.password = password;
        this.roleId = roleId;
        this.createTime = createTime;
        this.info = info;
    }

    public Person(Long id, String name, Integer age,String mail, String gender, String password, Long roleId, String info) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.mail = mail;
        this.gender = gender;
        this.createTime = new Timestamp(System.currentTimeMillis());
        this.password = password;
        this.roleId = roleId;
        this.info = info;
    }
}
