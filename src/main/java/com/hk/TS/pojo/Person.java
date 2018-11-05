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
    private Role role;
    private Timestamp createTime;
    private String info;

    public Person() {
    }

    public Person(String name, Integer age, String gender, String password, Role role, String mail,String info) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.password = password;
        this.mail = mail;
        this.role = role;
        this.info = info;
    }

    /*传入时间参数*/
    public Person(String name, Integer age, String gender, String mail, String password, Role role, Timestamp createTime, String info) {
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.password = password;
        this.mail = mail;
        this.role = role;
        this.createTime = createTime;
        this.info = info;
    }

    public Person(Long id, String name, Integer age, String gender, String password, Role role, Timestamp createTime, String info) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.gender = gender;
        this.password = password;
        this.role = role;
        this.createTime = createTime;
        this.info = info;
    }

    public Person(Long id, String name, Integer age,String mail, String gender, String password, Role role, String info) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.mail = mail;
        this.gender = gender;
        this.createTime = new Timestamp(System.currentTimeMillis());
        this.password = password;
        this.role = role;
        this.info = info;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", gender='" + gender + '\'' +
                ", password='" + password + '\'' +
                ", mail='" + mail + '\'' +
                ", role=" + role +
                ", createTime=" + createTime +
                ", info='" + info + '\'' +
                '}';
    }
}
