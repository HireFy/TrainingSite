package com.hk.TS.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class RoleDaoTest {

    @Autowired
    private RoleDao roleDao;


    @Test
    public void getRoles() {
        System.out.println(roleDao.getRoles(0, 5));
    }

}