package com.hk.TS.dao;

import com.hk.TS.pojo.News;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewsDao {
    News getByTitle(String title);

    News getById(Long id);

    Boolean deleteById(Long id);

    Boolean insert(News news);

    Boolean update(News news);

    Boolean isTitleExist(String title);

    /*todo 要有个分页*/
    List<News> getNewsByAuthorId(Long authorId);

    List<News> getNews(@Param("offset") int offset, @Param("size") int size);
}
