package com.iimr.cvsystem.dao.implement;

import com.iimr.cvsystem.dao.UserInfoDao;
import com.iimr.cvsystem.model.User;
import com.iimr.cvsystem.model.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Jiajie on 2017/4/10.
 */
@Repository
public class UserInfoDaoImpl implements UserInfoDao {
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public void updateUserId(User user) {
        System.out.println("user3:" + user.getUserId() + "user3:" + user.getUserName());
        String sqlStr = "INSERT INTO user_info (user_id, enroll_status, submit_status, hasreport) VALUES(?,?,?,?)";
        Object[] params = new Object[]{user.getUserId(), 0, 0, 0};
        jdbcTemplate.update(sqlStr, params);
    }

    @Override
    public void updateSampleIdByUserId(int sampleId, int userId) {
        String sqlStr = "UPDATE user_info SET sample_id=? WHERE user_id=?";
        Object[] params = new Object[]{sampleId, userId};
        jdbcTemplate.update(sqlStr, params);
    }

    @Override
    public void updateLabIdByUserId(int labId, int userId) {
        String sqlStr = "UPDATE user_info SET lab_id=? WHERE user_id=?";
        Object[] params = new Object[]{labId, userId};
        jdbcTemplate.update(sqlStr, params);
    }

    @Override
    public UserInfo findUserInfoByUserId(int userId) {
        System.out.println("user3:" + userId);
        String sqlStr = "SELECT * FROM user_info WHERE user_id=?";
        final UserInfo userInfo = new UserInfo();
        jdbcTemplate.query(sqlStr, new Object[]{userId}, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                userInfo.setUserId(resultSet.getInt("user_id"));
                userInfo.setSampleId(resultSet.getInt("sample_id"));
                userInfo.setLabId(resultSet.getInt("lab_id"));
                userInfo.setEnrollStatus(resultSet.getBoolean("enroll_status"));
                userInfo.setSubmitStatus(resultSet.getBoolean("submit_status"));
                userInfo.setHasReport(resultSet.getBoolean("hasreport"));
            }
        });
        return userInfo;
    }

}
