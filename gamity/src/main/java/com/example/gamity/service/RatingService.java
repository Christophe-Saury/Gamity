package com.example.gamity.service;

import com.example.gamity.controller.bean.Category;
import com.example.gamity.controller.bean.Game;

import java.util.List;

public interface RatingService {

    void setRating(long user_id, long gameId, int rating);
}
