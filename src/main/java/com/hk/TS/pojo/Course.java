package com.hk.TS.pojo;

import lombok.Data;

@Data
public class Course {
    private Long id;
    private String name;
    private CourseType courseType;
    private String price;
    private String info;

    public Course() {

    }

    public Course(Long id, String name, CourseType courseType, String price, String info) {
        this.id = id;
        this.name = name;
        this.courseType = courseType;
        this.price = price;
        this.info = info;
    }
}
