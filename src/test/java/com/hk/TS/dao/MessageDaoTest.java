package com.hk.TS.dao;

import com.hk.TS.pojo.Message;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class MessageDaoTest {

    @Autowired
    private MessageDao messageDao;

    @Test
    public void getById() {
//        assertEquals(null, messageDao.getById((long) 1));
        System.out.println(messageDao.getById((long) 1));
    }

    @Test
    public void insert() {
        Message message = new Message("hh", "2824908821@qq.com");
        assertEquals(true, messageDao.insert(message));
    }

    @Test
    public void deleteById() {
        assertEquals(true, messageDao.deleteById((long) 1));
    }

    /*update Message的时候必须指定author mail*/
    @Test
    public void update() {
        Message message = new Message((long)2, "gg", "2824908821@qq.com");
        assertEquals(true, messageDao.update(message));
    }

    @Test
    public void getMessages() {
        System.out.println(messageDao.getMessages(0, 5));
    }
}