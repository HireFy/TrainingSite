package com.hk.TS.dao;

import com.hk.TS.pojo.Video;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-mybatis.xml")
public class VideoDaoTest {

    @Autowired
    private VideoDao videoDao;

    @Test
    public void getById() {
        assertNotNull(videoDao.getById((long) 1));
    }

    @Test
    public void getByHref() {
        assertNotNull(videoDao.getByHref("/video/sdfsdf.mp4"));
    }

    @Test
    public void insert() {
        Video video = new Video("/video/sdfsdf.mp4");
        assertEquals(true, videoDao.insert(video));
    }

    @Test
    public void update() {
        Video video = new Video((long)1,"/video/ow/sdfsd.mp4");
        assertEquals(true, videoDao.update(video));
    }

    @Test
    public void deleteById() {
        assertEquals(true, videoDao.deleteById((long)1));
    }

    @Test
    public void getVideos() {
        assertNotNull(videoDao.getVideos(0, 5));
    }
}