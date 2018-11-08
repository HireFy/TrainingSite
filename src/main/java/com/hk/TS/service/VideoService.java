package com.hk.TS.service;

import com.hk.TS.pojo.Video;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VideoService {
    Video getById(Long id);

    Video getByHref(String href);

    Boolean insert(Video video);

    Boolean update(Video video);

    Boolean deleteById(Long id);

    List<Video> getVideos(int pageNum, int pageSize);

    Boolean isHrefExist(String href);
}
