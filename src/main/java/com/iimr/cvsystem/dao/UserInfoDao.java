package com.iimr.cvsystem.dao;

import com.iimr.cvsystem.model.Result;
import com.iimr.cvsystem.model.User;
import com.iimr.cvsystem.model.UserInfo;

/**
 * Created by Jiajie on 2017/4/5.
 */
public interface UserInfoDao {
    void updateUserId(User user);
    void updateSampleIdByUserId(int sampleId, int userId);
    void updateLabIdByUserId(int labId, int userId);
    UserInfo findUserInfoByUserId(int userId);
}
