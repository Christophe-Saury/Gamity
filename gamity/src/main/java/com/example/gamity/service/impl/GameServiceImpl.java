package com.example.gamity.service.impl;

import com.example.gamity.controller.bean.Game;
import com.example.gamity.controller.bean.User;
import com.example.gamity.dao.GameDao;
import com.example.gamity.dao.UserDao;
import com.example.gamity.service.GameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GameServiceImpl implements GameService {

    @Autowired
    GameDao gameDao;

    @Override
    public Game getGameById(long gameId) {
        Game game = gameDao.getGameById(gameId);
        return game;
    }

    @Override
    public List<Game> getAllGames() {
        return gameDao.getAllGames();
    }

    @Override
    public List<Game> getAllGamesByCategory(long categoryId){
        return gameDao.getAllGamesByCategory(categoryId);
    }
}
