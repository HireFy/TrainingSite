package com.hk.TS.dao;

import com.hk.TS.pojo.Course;
import com.hk.TS.pojo.CourseType;
import com.hk.TS.service.CourseTypeService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

public class CourseTypeDaoTest {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        CourseTypeService service = (CourseTypeService) ctx.getBean("courseTypeService");

//        System.out.println(service.getByName("计算机"));

//        System.out.println(service.getById((long) 2));

//        System.out.println(service.getCourseTypes(1, 5));

//        System.out.println(service.deleteById((long) 2));

//        CourseType courseType = new CourseType((long) 3, "前端");
//        System.out.println(service.updateById(courseType));

//        CourseType courseType = new CourseType("后端");
//        System.out.println(service.insert(courseType));

        System.out.println(service.isNameExist("端"));
    }
}