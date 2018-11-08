package com.hk.TS.service.impl;

import com.hk.TS.dao.PictureDao;
import com.hk.TS.pojo.Picture;
import com.hk.TS.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PictureServiceImpl implements PictureService {

    @Autowired
    private PictureDao pictureDao;

    @Override
    public Picture getById(Long id) {
        return pictureDao.getById(id);
    }

    @Override
    public Boolean insert(Picture picture) {
        return pictureDao.insert(picture);
    }

    @Override
    public Boolean deleteById(Long id) {
        return pictureDao.deleteById(id);
    }

    @Override
    public Boolean update(Picture picture) {
        return pictureDao.update(picture);
    }

    @Override
    public Picture getByHref(String href) {
        return pictureDao.getByHref(href);
    }

    @Override
    public Boolean isHrefExist(String href) {
        return pictureDao.isHrefExist(href);
    }

    @Override
    public List<Picture> getPics(int pageNum, int pageSize) {
        return pictureDao.getPics((pageNum - 1) * pageSize, pageSize);
    }
}
