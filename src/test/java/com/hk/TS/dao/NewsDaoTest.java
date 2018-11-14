package com.hk.TS.dao;

import com.hk.TS.pojo.News;
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
public class NewsDaoTest {

    @Autowired
    private NewsDao newsDao;

    /*存储生成的id*/
    private static Long id;

    @Test
    public void a_insert() {
        News news = new News("title", (long) 3, "Nobis tempore reprehenderit ut incidunt.", (long) 5);
        assertEquals(true, newsDao.insert(news));
        id = news.getId();
    }

    @Test
    public void b_getByTitle() {
        System.out.println(newsDao.getByTitle("FFFF"));
    }

    @Test
    public void c_getById() {
        System.out.println(newsDao.getById(id));
    }

    @Test
    public void d_update() {
        News news = new News();
        news.setId((long) id);
        news.setTitle("FFsdfsdfFF");
        assertEquals(true, newsDao.update(news));
    }

    @Test
    public void e_isTitleExist() {
        assertEquals(true, newsDao.isTitleExist("title"));
        assertEquals(false, newsDao.isTitleExist("sdfsdf"));
    }

    @Test
    public void f_getNewsByAuthorId() {
        System.out.println(newsDao.getNewsByAuthorId((long) 3));
    }

    @Test
    public void g_getNews() {
        System.out.println(newsDao.getNews(0, 5));
    }

    @Test
    public void h_deleteById() {
        assertEquals(true, newsDao.deleteById(id));
    }

    @Test
    public void getTotalCount(){
        System.out.println(newsDao.getTotalCount());
    }
}