package com.example.gamity.dao;

import com.example.gamity.controller.bean.Game;

import java.util.List;

public interface GameDao {

    Game getGameById(long gameId);
    List<Game> getAllGames();

    List<Game> getAllGamesByCategory(long categoryId);
}
