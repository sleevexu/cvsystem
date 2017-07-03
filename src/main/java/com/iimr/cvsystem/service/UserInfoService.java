package com.iimr.cvsystem.service;

import com.iimr.cvsystem.model.Ques;
import com.iimr.cvsystem.model.Result;
import com.iimr.cvsystem.model.User;

/**
 * Created by Jiajie on 2017/4/10.
 */
public interface UserInfoService {
    boolean checkUserInfoByUserId(User user);
    boolean checkUserInfoBySampleId(int userId);
    boolean checkUserInfoByLabId(int userId);
    void updateUserId(User user);
    void updateSampleId(Result result, int userId);
    void updateLabId(Ques ques,int userId);
}
