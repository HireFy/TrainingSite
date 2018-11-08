package com.hk.TS.pojo;

import lombok.Data;

@Data
public class CourseType {
    private Long id;
    private String name;
    private Long fatherId;

    public CourseType() {

    }

    public CourseType(Long id) {
        this.id = id;
    }

    public CourseType(String name, Long fatherId) {
        this.name = name;
        this.fatherId = fatherId;
    }

    public CourseType(String name) {
        this.name = name;
    }

    public CourseType(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public CourseType(Long id, String name, Long fatherId) {
        this.id = id;
        this.name = name;
        this.fatherId = fatherId;
    }
}
