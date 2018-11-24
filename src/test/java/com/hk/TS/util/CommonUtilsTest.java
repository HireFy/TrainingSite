package com.hk.TS.util;

import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

public class CommonUtilsTest {

    @Test
    public void cleanEmptyValue() {
        Map<String, Object> map = new HashMap<>();
        map.put("id", 1);
        map.put("name", "");
        map.put("info", "minima fugiat maiores officiis fugit sed voluptatum dolorem officiis eos");

        System.out.println(new CommonUtils().cleanEmptyValue(map));
    }
}