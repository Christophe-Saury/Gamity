package com.example.gamity.service.impl;

import com.example.gamity.controller.bean.User;
import com.example.gamity.dao.UserDao;
import com.example.gamity.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User getUserByUserId(String userId){
        User user = userDao.getUserById(userId);
        return user;
    }

    @Override
    public int createNewUser(User user) {
        return userDao.createNewUser(user);
    }

    @Override
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }
}
