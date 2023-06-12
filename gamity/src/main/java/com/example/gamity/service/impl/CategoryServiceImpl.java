package com.example.gamity.service.impl;

import com.example.gamity.controller.bean.Category;
import com.example.gamity.dao.CategoryDao;
import com.example.gamity.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryDao categoryDao;

    @Override
    public Category getCategory(long idCategory){
        return categoryDao.getCategoryName(idCategory);
    }
}
