package com.hk.TS.service.impl;

import com.hk.TS.dao.NewsDao;
import com.hk.TS.pojo.News;
import com.hk.TS.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao newsDao;

    @Override
    public News getByTitle(String title) {
        return newsDao.getByTitle(title);
    }

    @Override
    public News getById(Long id) {
        return newsDao.getById(id);
    }

    @Override
    public Boolean deleteById(Long id) {
        return newsDao.deleteById(id);
    }

    @Override
    public Boolean insert(News news) {
        return newsDao.insert(news);
    }

    @Override
    public Boolean update(News news) {
        return newsDao.update(news);
    }

    @Override
    public Boolean isTitleExist(String title) {
        return newsDao.isTitleExist(title);
    }

    @Override
    public List<News> getNewsByAuthorId(Long authorId) {
        return newsDao.getNewsByAuthorId(authorId);
    }

    @Override
    public List<News> getNews(int pageNum, int pageSize) {
        return newsDao.getNews((pageNum - 1) * pageSize, pageSize);
    }
}
