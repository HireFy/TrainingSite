package com.hk.TS.pojo;

import lombok.Data;

@Data
public class Picture {
    private Long id;
    private String href;
    private Long courseTypeId;

    public Picture() {

    }

    public Picture(Long id, String href) {
        this.id = id;
        this.href = href;
    }

    public Picture(Long id, String href, Long courseTypeId) {
        this.id = id;
        this.href = href;
        this.courseTypeId = courseTypeId;
    }

    public Picture(String href, Long courseTypeId) {
        this.href = href;
        this.courseTypeId = courseTypeId;
    }

    public Picture(String href) {
        this.href = href;
    }
}
