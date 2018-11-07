package com.hk.TS.pojo;
import lombok.Data;


import lombok.Data;

@Data
public class Course {
    private Long id;
    private String name;
    private Long courseTypeId;
    private Long coverPicId;
    private Integer price;
    private String info;
    private Long teacherId;

    public Course() {


    }

    public Course(Long id, String name, Long courseTypeId, Long coverPicId, Integer price, String info, Long teacherId) {
        this.id = id;
        this.name = name;
        this.courseTypeId = courseTypeId;
        this.coverPicId = coverPicId;
        this.price = price;
        this.info = info;
        this.teacherId = teacherId;
    }

    public Course(String name, Long courseTypeId, Long coverPicId, Integer price, String info, Long teacherId) {
        this.name = name;
        this.courseTypeId = courseTypeId;
        this.coverPicId = coverPicId;
        this.price = price;
        this.info = info;
        this.teacherId = teacherId;
    }
}
