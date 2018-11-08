package com.hk.TS.dao;

import com.hk.TS.pojo.Video;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VideoDao {
    Video getById(Long id);

    Video getByHref(String href);

    Boolean insert(Video video);

    Boolean update(Video video);

    Boolean deleteById(Long id);

    List<Video> getVideos(@Param("offset") int offset, @Param("size") int size);

    Boolean isHrefExist(String href);
}
