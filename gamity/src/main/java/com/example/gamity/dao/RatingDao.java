package com.example.gamity.dao;

public interface RatingDao {

    void setRating(long user_id, long gameId, int rating);
}
