package com.hk.TS.service.impl;

import com.hk.TS.dao.MessageDao;
import com.hk.TS.pojo.Message;
import com.hk.TS.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageDao messageDao;

    @Override
    public Message getById(Long id) {
        return messageDao.getById(id);
    }

    @Override
    public Boolean insert(Message message) {
        return messageDao.insert(message);
    }

    @Override
    public Boolean deleteById(Long id) {
        return messageDao.deleteById(id);
    }

    @Override
    public Boolean update(Message message) {
        return messageDao.update(message);
    }

    @Override
    public List<Message> getMessages(int pageNum, int pageSize) {
        return messageDao.getMessages((pageNum-1)*pageSize, pageSize);
    }
}
