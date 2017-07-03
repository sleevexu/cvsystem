package com.iimr.cvsystem.dao;

import com.iimr.cvsystem.model.Ques;

/**
 * Created by Jiajie on 2017/4/5.
 */
public interface QuesDao {
    int findLabIdByUserId(int userId);
    Ques findQuesByLabId(int labId);
    void updateLabIdByUserId(Ques ques, int userId);
    void updateLabNameByLabId(Ques ques);
    void submitQues(Ques ques, int labId);
}
