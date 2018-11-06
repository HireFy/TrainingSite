package com.hk.TS.pojo;

import lombok.Data;

@Data
public class CourseType {
    private Long id;
    private String name;
    private Long father_id;

    public CourseType() {

    }

    public CourseType(Long id) {
        this.id = id;
    }

    public CourseType(Long id, String name, Long father_id) {
        this.id = id;
        this.name = name;
        this.father_id = father_id;
    }
}
