package com.iimr.cvsystem.dao.implement;

import com.iimr.cvsystem.dao.UserDao;
import com.iimr.cvsystem.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Jiajie on 2017/4/4.
 */

@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void register(User user){
        String sqlStr = "INSERT into user(user_name, user_password) VALUES (?,?)";
        Object[] params = new Object[]{user.getUserName(),user.getUserPassword()};
        jdbcTemplate.update(sqlStr,params);
    }


    @Override
    public User findUserByUserName(String userName){
        String sqlStr = "select * from user where user_name=?";
        final User user = new User();
        jdbcTemplate.query(sqlStr, new Object[]{userName}, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                user.setUserId(resultSet.getInt("user_id"));
                user.setUserName(resultSet.getString("user_name"));
                user.setUserPassword(resultSet.getString("user_password"));
            }
        });

        return user;
    }

}
