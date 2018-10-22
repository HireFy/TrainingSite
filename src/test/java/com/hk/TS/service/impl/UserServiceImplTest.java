package com.hk.TS.service.impl;


import com.hk.TS.service.UserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class UserServiceImplTest {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        UserService service = (UserService) ctx.getBean("userService");
        System.out.println(service.getById(10));
      }
}