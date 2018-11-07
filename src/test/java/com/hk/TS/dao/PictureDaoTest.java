package com.hk.TS.dao;

import com.hk.TS.pojo.Picture;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class PictureDaoTest {

    @Autowired
    private PictureDao pictureDao;

    @Test
    public void getById() {
//        assertEquals(null, pictureDao.getById((long) 1));
        System.out.println(pictureDao.getById((long) 2));
    }

    @Test
    public void insert() {
        Picture picture = new Picture("/images/author-image3.jpg");
        assertEquals(true, pictureDao.insert(picture));
    }

    @Test
    public void deleteById() {
        assertEquals(true, pictureDao.deleteById((long) 1));
    }

    @Test
    public void update() {
        Picture picture = new Picture((long)2, "/images/404_3.jpg");
        assertEquals(true, pictureDao.update(picture));
    }

    @Test
    public void getByHref() {
        System.out.println(pictureDao.getByHref("/images/404_3.jpg"));
    }

    @Test
    public void isHrefExist() {
        assertEquals(true, pictureDao.isHrefExist("/images/404_3.jpg"));
    }

    @Test
    public void getPics() {
        System.out.println(pictureDao.getPics(0, 5));
    }
}