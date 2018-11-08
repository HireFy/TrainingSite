package com.hk.TS.service;

import com.hk.TS.pojo.Picture;
import java.util.List;

public interface PictureService {
    Picture getById(Long id);

    Boolean insert(Picture picture);

    Boolean deleteById(Long id);

    Boolean update(Picture picture);

    Picture getByHref(String href);

    Boolean isHrefExist(String href);

    List<Picture> getPics(int pageNum,int pageSize);
}
