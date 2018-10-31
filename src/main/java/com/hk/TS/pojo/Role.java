package com.hk.TS.pojo;

import lombok.Data;

@Data
public class Role {
    private Long id;
    private String type;

    public Role() {

    }

    public Role(Long id) {
        this.id = id;
    }

    public Role(Long id, String type) {
        this.id = id;
        this.type = type;
    }
}
