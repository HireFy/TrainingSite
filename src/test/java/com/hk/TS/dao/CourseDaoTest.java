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
        Map<String, Object> map = new HashMap<>();

        map.put("id", "1");
        map.put("name", "Python");
        System.out.println(service.updateById(map));
    }

}