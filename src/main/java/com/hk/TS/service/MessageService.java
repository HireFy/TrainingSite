package com.hk.TS.service;

import com.hk.TS.pojo.Message;

import java.util.List;
import java.util.Map;

public interface MessageService {
    Message getById(Long id);

    Boolean insert(Message message);

    Boolean deleteById(Long id);

    Boolean update(Message message);

    List<Message> getMessages(int pageNum, int pageSize);
}
