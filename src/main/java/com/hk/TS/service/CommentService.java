package com.hk.TS.service;

import com.hk.TS.pojo.Comment;

import java.util.List;
import java.util.Map;

public interface CommentService {
    Comment getById(Long id);

    Boolean insert(Comment comment);

    Boolean deleteById(Long id);

    Boolean updateById(Map<String, Object> maps);

    List<Comment> getAllComments();
}
