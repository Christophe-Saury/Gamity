package com.example.gamity.dao;

import com.example.gamity.controller.bean.User;

import java.util.List;

public interface UserDao {
    User getUserById(String userId);

    int createNewUser(User user);

    List<User> getAllUsers();
}
