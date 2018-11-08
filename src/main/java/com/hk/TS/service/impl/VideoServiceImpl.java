package com.hk.TS.service.impl;

import com.hk.TS.dao.VideoDao;
import com.hk.TS.pojo.Video;
import com.hk.TS.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private VideoDao videoDao;

    @Override
    public Video getById(Long id) {
        return videoDao.getById(id);
    }

    @Override
    public Video getByHref(String href) {
        return videoDao.getByHref(href);
    }

    @Override
    public Boolean insert(Video video) {
        return videoDao.insert(video);
    }

    @Override
    public Boolean update(Video video) {
        return videoDao.update(video);
    }

    @Override
    public Boolean deleteById(Long id) {
        return videoDao.deleteById(id);
    }

    @Override
    public List<Video> getVideos(int pageNum, int pageSize) {
        return videoDao.getVideos((pageNum-1) * pageSize, pageSize);
    }

    @Override
    public Boolean isHrefExist(String href) {
        return videoDao.isHrefExist(href);
    }
}
