package com.hk.TS.service.impl;

import com.hk.TS.service.PictureService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-mybatis.xml")
public class PictureServiceImplTest {

    @Autowired
    private PictureService pictureService;

    @Test
    public void save() {
        System.out.println(System.currentTimeMillis());
    }
}