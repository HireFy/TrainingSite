package com.hk.TS.dao;

import com.hk.TS.pojo.Comment;

import java.util.List;
import java.util.Map;

public interface CommentDao {
    Comment getById(Long id);

    Boolean insert(Comment comment);

    Boolean deleteById(Long id);

    Boolean update(Map<String, Object> maps);

    List<Comment> getAllComments();
}
