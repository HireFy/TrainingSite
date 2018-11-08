package com.hk.TS.service.impl;

import com.hk.TS.dao.NewsTypeDao;
import com.hk.TS.pojo.NewsType;
import com.hk.TS.service.NewsTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsTypeServiceImpl implements NewsTypeService {

    @Autowired
    private NewsTypeDao newsTypeDao;

    @Override
    public NewsType getById(Long id) {
        return newsTypeDao.getById(id);
    }

    @Override
    public Boolean insert(NewsType newsType) {
        return newsTypeDao.insert(newsType);
    }

    @Override
    public Boolean update(NewsType newsType) {
        return newsTypeDao.update(newsType);
    }

    @Override
    public NewsType getByTypeName(String name) {
        return newsTypeDao.getByTypeName(name);
    }

    @Override
    public Boolean deleteById(Long id) {
        return newsTypeDao.deleteById(id);
    }

    @Override
    public Boolean isTypeNameExist(String name) {
        return newsTypeDao.isTypeNameExist(name);
    }

    @Override
    public List<NewsType> getNewsTypes(int pageNum, int pageSize) {
        return newsTypeDao.getNewsTypes((pageNum-1)*pageSize, pageSize);
    }
}
