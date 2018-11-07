package com.hk.TS.dao;

import com.hk.TS.pojo.Comment;
import com.hk.TS.pojo.Message;

import java.util.List;
import java.util.Map;

public interface MessageDao {
    Message getById(Long id);

    Boolean insert(Message message);

    Boolean deleteById(Long id);

    Boolean update(Map<String, Object> maps);

    List<Message> getAllMessages();
}
