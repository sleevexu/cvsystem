package com.iimr.cvsystem.dao.implement;

import com.iimr.cvsystem.dao.ResultDao;
import com.iimr.cvsystem.model.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Jiajie on 2017/4/5.
 */
@Repository
public class ResultDaoImpl implements ResultDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Result findResultBySampleId(int sampleId) {
        String sqlStr="SELECT * FROM result WHERE sample_id=?";
        final Result result1 = new Result();
        jdbcTemplate.query(sqlStr, new Object[]{sampleId}, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                result1.setSampleId(resultSet.getInt("sample_id"));
                result1.setInitialTemp(resultSet.getDouble("initial_temp"));
                result1.setInitialRh(resultSet.getDouble("initial_rh"));
                result1.setInputVolt(resultSet.getDouble("input_volt"));
                result1.setInputFreq(resultSet.getDouble("input_freq"));
                result1.setTestCycleNum(resultSet.getInt("test_cycle_num"));
                result1.setTotalTestTime(resultSet.getInt("total_test_time"));
                result1.setConsumePower(resultSet.getDouble("consume_power"));
                result1.setStandbyPower(resultSet.getDouble("standby_power"));
                result1.setUncertainty(resultSet.getDouble("uncertainty"));
                result1.setAffectFactors(resultSet.getString("affect_factors"));
            }
        });

        return result1;
    }

    @Override
    public int findSampleIdByUserId(int userId){
//        Object userId = session.getAttribute("userId");
        String sqlStr = "SELECT sample_id FROM user_info WHERE user_id=?";
        Integer sampleId = jdbcTemplate.queryForObject(sqlStr, Integer.class,userId);

        return sampleId;
    }


    @Override
    public void submitResult(Result result){
        String sqlStr="INSERT INTO result VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        Object[] params = new Object[]{result.getSampleId(),result.getInitialTemp(),
                result.getInitialRh(),result.getInputVolt(),result.getInputFreq(),
                result.getTestCycleNum(), result.getTotalTestTime(),
                result.getConsumePower(),result.getStandbyPower(),
                result.getUncertainty(),result.getAffectFactors()};
        jdbcTemplate.update(sqlStr,params);
    }

}
