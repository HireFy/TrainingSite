package com.hk.TS.pojo;

import lombok.Data;

@Data
public class NewsType {
    private Long id;
    private String name;
    private Long fatherId;

    public NewsType() {

    }

    public NewsType(String name) {
        this.name = name;
    }

    public NewsType(Long id, String name, Long fatherId) {
        this.id = id;
        this.name = name;
        this.fatherId = fatherId;
    }

    public NewsType(String name, Long fatherId) {
        this.name = name;
        this.fatherId = fatherId;
    }
}
