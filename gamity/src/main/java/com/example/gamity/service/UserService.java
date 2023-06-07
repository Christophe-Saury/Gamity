package com.example.gamity.service;

import com.example.gamity.controller.bean.User;

import java.util.List;

public interface UserService {

    User getUserByUserId(String userId);

    int createNewUser(User user);

    List<User> getAllUsers();

}
