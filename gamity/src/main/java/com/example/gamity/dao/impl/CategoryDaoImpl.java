package com.example.gamity.dao.impl;

import com.example.gamity.controller.bean.Category;
import com.example.gamity.controller.bean.Game;
import com.example.gamity.dao.CategoryDao;
import com.example.gamity.dao.GameDao;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class CategoryDaoImpl extends JdbcDaoSupport implements CategoryDao {

    @Autowired
    DataSource dataSource;

    @PostConstruct
    private void initialize(){
        setDataSource(dataSource);
    }

    @Override
    public Category getCategoryName(long idCategory){
        String sql = "select name from category where idcategory = ?;";

        return getJdbcTemplate().queryForObject(sql, new Object[]{idCategory}, new RowMapper<Category>() {
            @Override
            public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
                Category category = new Category();
                category.setIdCategory(idCategory);
                category.setNameCategory(rs.getString(1));
                return category;
            }
        });
    }

}
