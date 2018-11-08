package com.hk.TS.dao;

import com.hk.TS.pojo.NewsType;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class NewsTypeDaoTest {

    @Autowired
    private NewsTypeDao newsTypeDao;

    private static Long id;

    @Test
    public void a_insert() {
        NewsType newsType = new NewsType("Java");
        assertEquals(true, newsTypeDao.insert(newsType));
        id = newsType.getId();
    }

    @Test
    public void b_getById() {
        System.out.println(newsTypeDao.getById(id));
        assertNotNull(newsTypeDao.getById(id));
    }


    @Test
    public void c_update() {
        NewsType newsType = new NewsType();
        newsType.setId(id);
        newsType.setName("JavaScript");
        assertEquals(true, newsTypeDao.update(newsType));
    }

    @Test
    public void d_getByTypeName() {
        assertNotNull(newsTypeDao.getByTypeName("JavaScript"));
    }

    @Test
    public void e_isTypeNameExist() {
        assertEquals(true, newsTypeDao.isTypeNameExist("JavaScript"));
    }

    @Test
    public void f_getNewsTypes() {
        assertNotNull(newsTypeDao.getNewsTypes(0, 5));
        System.out.println(newsTypeDao.getNewsTypes(0, 5));
    }

    @Test
    public void g_deleteById() {
        assertEquals(true, newsTypeDao.deleteById((long) id));
    }
}