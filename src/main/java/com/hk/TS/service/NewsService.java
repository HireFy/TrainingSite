package com.hk.TS.service;

import com.hk.TS.pojo.News;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface NewsService {
    News getByTitle(String title);

    News getById(Long id);

    Boolean deleteById(Long id);

    Boolean insert(News news);

    Boolean update(News news);

    Boolean isTitleExist(String title);

    Boolean save(News news, HttpSession session);

    /*todo 要有个分页 前期不考虑*/
    List<News> getNewsByAuthorId(Long authorId);

    List<News> getNews(int pageNum, int pageSize);
}
