package com.iimr.cvsystem.dao.implement;

import com.iimr.cvsystem.dao.QuesDao;
import com.iimr.cvsystem.model.Ques;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Jiajie on 2017/4/5.
 */
@Repository
public class QuesDaoImpl implements QuesDao{
    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int findLabIdByUserId(int userId) {
        String sqlStr = "SELECT lab_id FROM user_info WHERE user_id = ?";
        int labId = jdbcTemplate.queryForObject(sqlStr,int.class,userId);
        return labId;
    }

    @Override
    public Ques findQuesByLabId(int labId) {
        String sqlStr = "SELECT * FROM ques WHERE lab_id =?";
        final Ques ques = new Ques();
        jdbcTemplate.query(sqlStr, new Object[]{labId}, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                ques.setLabId(resultSet.getInt("lab_id"));
                ques.setLabName(resultSet.getString("lab_name"));
                ques.setLabAddress(resultSet.getString("lab_address"));
                ques.setLabStandard(resultSet.getString("lab_standard"));
                ques.setCertification(resultSet.getString("certification"));
                ques.setLabType(resultSet.getString("lab_type"));
                ques.setLabProvince(resultSet.getString("lab_province"));
                ques.setExperEnviroment(resultSet.getString("exper_enviroment"));
                ques.settSensor(resultSet.getString("t_sensor"));
                ques.setPowerModel(resultSet.getString("power_model"));
                ques.setPowerVolume(resultSet.getString("power_volume"));
                ques.setPowerStableWay(resultSet.getString("power_stable_way"));
                ques.setVolStability(resultSet.getDouble("vol_stability"));
                ques.setFreqStability(resultSet.getDouble("freq_stability"));
                ques.setMaxDistort(resultSet.getDouble("max_distort"));
                ques.setiType(resultSet.getString("i_type"));
                ques.setiManufactor(resultSet.getString("i_manufactor"));
                ques.setiModel(resultSet.getString("i_model"));
                ques.setiVolRange(resultSet.getInt("i_vol_range"));
                ques.setiVolAccu(resultSet.getString("i_vol_accu"));
                ques.setiCurrentRange(resultSet.getInt("i_current_range"));
                ques.setiCurrentAccu(resultSet.getString("i_current_accu"));
                ques.setiCompensate(resultSet.getString("i_compensate"));
                ques.setElecProtect(resultSet.getString("elec_protect"));
                ques.setExperDate(resultSet.getString("exper_date"));
                ques.setExperDeviate(resultSet.getString("exper_deviate"));
                ques.setDescription(resultSet.getString("description"));
                ques.setSimuAbility(resultSet.getString("simu_ability"));
                ques.setAdvice(resultSet.getString("advice"));

            }
        });
        return ques;
    }

    @Override
    public void updateLabIdByUserId(Ques ques, int userId) {
        String sqlStr = "UPDATE user_info SET lab_id=? WHERE user_id=?";
        Object[] params = new Object[]{ques.getLabId(),userId};
        jdbcTemplate.update(sqlStr,params);
    }

    @Override
    public void updateLabNameByLabId(Ques ques) {
        String sqlStr = "INSERT INTO ques (lab_id,lab_name) VALUES(?,?)";
        Object[] params = new Object[]{ques.getLabId(), ques.getLabName()};
        jdbcTemplate.update(sqlStr,params);
    }

    @Override
    public void submitQues(Ques ques, int labId) {
        String sqlStr = "UPDATE ques SET lab_address=?,lab_standard=?,qualification=?," +
                "certification=?,lab_type=?,lab_province=?,exper_enviroment=?,t_sensor=?," +
                "power_model=?,power_volume=?,power_stable_way=?,vol_stability=?,freq_stability=?," +
                "max_distort=?,i_type=?,i_manufactor=?,i_model=?,i_vol_range=?,i_vol_accu=?," +
                "i_current_range=?,i_current_accu=?,i_compensate=?,elec_protect=?,exper_date=?," +
                "exper_deviate=?,description=?,simu_ability=?,advice=? WHERE lab_id=?";
        Object[] params = new Object[]{ques.getLabAddress(),ques.getLabStandard(),ques.getQualification(),
        ques.getCertification(),ques.getLabType(),ques.getLabProvince(),ques.getExperEnviroment(),
        ques.gettSensor(),ques.getPowerModel(),ques.getPowerVolume(),ques.getPowerStableWay(),
        ques.getVolStability(),ques.getFreqStability(),ques.getMaxDistort(),ques.getiType(),
        ques.getiManufactor(),ques.getiModel(),ques.getiVolRange(),ques.getiVolAccu(),ques.getiCurrentRange(),
        ques.getiCurrentAccu(),ques.getiCompensate(),ques.getElecProtect(),ques.getExperDate(),
        ques.getExperDeviate(),ques.getDescription(),ques.getSimuAbility(),ques.getAdvice(),labId};
        jdbcTemplate.update(sqlStr,params);
    }


}
