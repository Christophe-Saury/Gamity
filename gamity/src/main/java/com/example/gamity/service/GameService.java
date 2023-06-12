package com.example.gamity.service;

import com.example.gamity.controller.bean.Game;

import java.util.List;

public interface GameService {

    Game getGameById(long gameId);
    List<Game> getAllGames();

    List<Game> getAllGamesByCategory(long categoryId);

}
