package com.example.gamity.service.impl;

import com.example.gamity.controller.bean.Game;
import com.example.gamity.controller.bean.Rating;
import com.example.gamity.dao.GameDao;
import com.example.gamity.dao.RatingDao;
import com.example.gamity.service.RatingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RatingServiceImpl implements RatingService {

    @Autowired
    RatingDao ratingDao;

    @Override
    public void setRating(long user_id, long gameId, int rating) {
        ratingDao.setRating(user_id, gameId, rating);
    }

}
