package com.hk.TS.service;

import com.hk.TS.pojo.Picture;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

public interface PictureService {
    Picture getById(Long id);

    Boolean insert(Picture picture);

    Boolean deleteById(Long id);

    Boolean update(Picture picture);

    Picture getByHref(String href);

    Boolean isHrefExist(String href);

    List<Picture> getPics(int pageNum,int pageSize);

    String save(MultipartFile file) throws IOException;
}
