package com.hk.TS.pojo;

import lombok.Data;

@Data
public class Video {
    private Long id;
    private String href;

    public Video() {

    }

    public Video(String href) {
        this.href = href;
    }

    public Video(Long id, String href) {
        this.id = id;
        this.href = href;
    }
}
