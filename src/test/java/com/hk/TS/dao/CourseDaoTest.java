package com.hk.TS.dao;

import com.hk.TS.service.CourseService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.Assert.*;

public class CourseDaoTest {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        CourseService service = (CourseService) ctx.getBean("courseService");
        System.out.println(service.getAllCourse());
    }

}