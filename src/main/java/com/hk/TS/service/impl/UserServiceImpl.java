package com.hk.TS.service.impl;

import com.hk.TS.dao.UserDao;
import com.hk.TS.pojo.User;
import com.hk.TS.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    @Override
    public List<User> findAllUsers() {

        return dao.getAll();
    }

    @Override
    public User getById(Integer id) {
        return dao.getById(id);
    }

    public UserDao getDao() {
        return dao;
    }

    public void setDao(UserDao dao) {
        this.dao = dao;
    }
}
