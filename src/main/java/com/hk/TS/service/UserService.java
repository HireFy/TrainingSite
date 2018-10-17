package com.hk.TS.service;

import com.hk.TS.pojo.User;

import java.util.List;

public interface UserService {
    List<User> findAllUsers();

    User getById(Integer id);
}
