package com.example.gamity.dao.impl;

import com.example.gamity.dao.RatingDao;
import com.example.gamity.dao.UserDao;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;

@Repository
public class RatingDaoImpl extends JdbcDaoSupport implements RatingDao {

    @Autowired
    DataSource dataSource;

    @PostConstruct
    private void initialize(){
        setDataSource(dataSource);
    }

    @Override
    public void setRating(long user_id, long gameId, int rating) {
        String sql = "INSERT INTO rating (user_id, game_id, rating) VALUES (?, ?, ?)";

        getJdbcTemplate().update(sql, user_id, gameId, rating);
    }


}
