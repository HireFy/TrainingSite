package com.hk.TS.dao;

import com.hk.TS.pojo.Course;
import com.hk.TS.service.CourseService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

public class CourseDaoTest {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        CourseService service = (CourseService) ctx.getBean("courseService");

//        Course course = new Course("Mysql", (long)1, null, 200, "", (long)5);
//
//        System.out.println(service.insert(course));

        System.out.println(service.getCourses(1, 5));

//        Course course = new Course((long) 2, "MySQL", (long)1, null, 200, null, (long)3);
//        System.out.println(service.update(course));
    }

}