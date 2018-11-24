package com.hk.TS.service.impl;

import com.hk.TS.dao.PictureDao;
import com.hk.TS.pojo.Picture;
import com.hk.TS.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Service
public class PictureServiceImpl implements PictureService {

    @Autowired
    private PictureDao pictureDao;

    private static String BASEDIR = "/home/jw/Documents/uploadImages/";

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

    public String save(MultipartFile file) throws IOException {
        String newFileName = null;
        if (file != null) {
            // 获取文件名称
            String originalFilename = file.getOriginalFilename();
            if (originalFilename != null && !"".contentEquals(originalFilename)) {
                // 获取扩展名
                String extName = originalFilename.substring(originalFilename.lastIndexOf("."));
                // 重新生成一个新的文件名
                newFileName = System.currentTimeMillis() + extName;
                // 指定存储文件的根目录
                File dirFile = new File(BASEDIR);
                if (!dirFile.exists()) {
                    dirFile.mkdirs();
                }
                String pathname = BASEDIR + newFileName;
                pictureDao.insert(new Picture(pathname));
                // 将上传的文件复制到新的文件（完整路径）中
                file.transferTo(new File(pathname));
            }
        }
        return newFileName;
    }
}
