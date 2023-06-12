package com.example.gamity.dao.impl;

import com.example.gamity.controller.bean.Game;
import com.example.gamity.controller.bean.User;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.example.gamity.constants.Constants;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import com.example.gamity.controller.bean.Game;
import com.example.gamity.dao.GameDao;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class GameDaoImpl extends JdbcDaoSupport implements GameDao {

    @Autowired
    DataSource dataSource;

    @PostConstruct
    private void initialize(){
        setDataSource(dataSource);
    }

    @Override
    public Game getGameById(long gameId){
        String sql = "select name, code, description, rating from game where game_id = ?;";

        return getJdbcTemplate().queryForObject(sql, new Object[]{gameId}, new RowMapper<Game>() {
            @Override
            public Game mapRow(ResultSet rs, int rowNum) throws SQLException {
                Game game = new Game();
                game.setIdgame(gameId);
                game.setGameName(rs.getString(1));
                game.setCode(rs.getString(2));
                game.setDescription(rs.getString(3));
                game.setRating(rs.getLong(4));
                return game;
            }
        });
    }

    @Override
    public List<Game> getAllGames(){
        String sql = "select game_id, name, description, rating from game;";

        return getJdbcTemplate().query(sql, new RowMapper<Game>() {
            @Override
            public Game mapRow(ResultSet rs, int rowNum) throws SQLException {
                Game game = new Game();
                game.setIdgame(rs.getLong(1));
                game.setGameName(rs.getString(2));
                game.setDescription(rs.getString(3));
                game.setRating(rs.getLong(4));
                return game;
            }
        });
    }

    @Override
    public List<Game> getAllGamesByCategory(long categoryId){
        String sql = "select game_id, name, description, rating from game where category=?;";

        return getJdbcTemplate().query(sql, new Object[]{categoryId}, new RowMapper<Game>() {
            @Override
            public Game mapRow(ResultSet rs, int rowNum) throws SQLException {
                Game game = new Game();
                game.setIdgame(rs.getLong(1));
                game.setGameName(rs.getString(2));
                game.setDescription(rs.getString(3));
                game.setRating(rs.getLong(4));
                return game;
            }
        });
    }


}
