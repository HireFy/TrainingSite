package com.hk.TS.dao;

import com.hk.TS.pojo.Person;
import com.hk.TS.pojo.Role;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-mybatis.xml")
public class PersonDaoTest {

    @Autowired
    private PersonDao personDao;

    @Test
    public void getById() {
    }

    @Test
    public void insert() {
    }

    @Test
    public void deleteById() {
    }

    @Test
    public void update() {
//        Person person = new Person((long) 3, "水电费", 23, null, null, new Role((long) 4), null, "");
        Person person = new Person();
        person.setId((long) 3);
        person.setName("收到了发几个");
        System.out.println(personDao.update(person));

    }

    @Test
    public void getByMail() {
    }

    @Test
    public void getByName() {
    }

    @Test
    public void isNameExist() {
    }

    @Test
    public void isMailExist() {
    }

    @Test
    public void getPersons() {
    }
}