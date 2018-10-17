package com.hk.TS.dao;

import com.hk.TS.pojo.User;

import java.util.List;

public interface UserDao {
    List<User> getAll();

    User getById(Integer id);
}
