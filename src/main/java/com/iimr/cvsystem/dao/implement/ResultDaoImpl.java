package com.iimr.cvsystem.dao.implement;

import com.iimr.cvsystem.dao.ResultDao;
import com.iimr.cvsystem.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;

/**
 * Created by Jiajie on 2017/4/5.
 */
@Repository
public class ResultDaoImpl implements ResultDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void updateUserInfo(Result result,HttpSession session){
        String sqlStr="UPDATE user_info SET sample_id=? where user_id=?";
        Object[] params = new Object[]{result.getSampleId(),session.getAttribute("userId")};
        jdbcTemplate.update(sqlStr,params);
    }

    @Override
    public void submitResult(Result result){
        String sqlStr="update ";
    }

}
