package com.hk.TS.dao;

import com.hk.TS.pojo.Course;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class CourseDaoTest {

    @Autowired
    private CourseDao courseDao;

    @Test
    public void getById() {
        System.out.println(courseDao.getById((long) 2));
    }

    @Test
    public void insert() {
    }

    @Test
    public void deleteById() {
    }

    @Test
    public void update() {
        Course course = new Course();
        course.setId((long) 2);
        course.setInfo("Aut eum porro dolor quidem a");
        System.out.println(courseDao.update(course));
    }

    @Test
    public void isNameExist() {
    }

    @Test
    public void getCourses() {
    }
}