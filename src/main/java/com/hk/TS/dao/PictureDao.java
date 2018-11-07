package com.hk.TS.dao;

import com.hk.TS.pojo.Picture;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PictureDao {
    Picture getById(Long id);

    Boolean insert(Picture picture);

    Boolean deleteById(Long id);

    Boolean update(Picture picture);

    Picture getByHref(String href);

    Boolean isHrefExist(String href);

    List<Picture> getPics(@Param("offset") int offset, @Param("size") int pageSize);
}
