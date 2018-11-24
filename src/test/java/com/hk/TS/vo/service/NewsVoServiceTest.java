package com.hk.TS.vo.service;

import com.hk.TS.dao.NewsDao;
import com.hk.TS.pojo.News;
import com.hk.TS.service.NewsService;
import com.hk.TS.vo.NewsVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-mybatis.xml")
public class NewsVoServiceTest {

    @Autowired
    private NewsDao newsDao;

    @Autowired
    private NewsService newsService;

    @Test
    public void transFormData() {
        List<News> newsList = newsDao.getNews(0, 5);
        List<NewsVO> list = newsService.transFormData(newsList);
        System.out.println(list);
        for (NewsVO newsVO: list){
            System.out.println("id " + newsVO.getId());
            System.out.println("author " + newsVO.getAuthorName());
            System.out.println("newsTypeName: " + newsVO.getNewsTypeName());
        }
        System.out.println(list.size());
    }

    @Test
    public void listNullTest() {
        List<Long> list = new ArrayList<>();
        list.add((long) 1);
        list.add((long) 3);
        list.add(null);

        List<Long> list1 = new ArrayList<>();
        for (Long l : list) {
            list1.add(l);
        }
        System.out.println(list1.size());
    }
}