package com.iimr.cvsystem.service.implement;

import com.iimr.cvsystem.dao.ResultDao;
import com.iimr.cvsystem.dao.UserDao;
import com.iimr.cvsystem.dao.UserInfoDao;
import com.iimr.cvsystem.model.Ques;
import com.iimr.cvsystem.model.Result;
import com.iimr.cvsystem.model.User;
import com.iimr.cvsystem.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Jiajie on 2017/4/10.
 */
@Service
public class UserInfoServiceImpl implements UserInfoService{
    @Autowired
    private UserInfoDao userInfoDao;
    private UserDao userDao;
    private ResultDao resultDao;

    public UserInfoServiceImpl(UserDao userDao, ResultDao resultDao) {
        this.userDao = userDao;
        this.resultDao = resultDao;
    }

    @Override
    public boolean checkUserInfoByUserId(User user) {
        System.out.println("booo:"+userInfoDao.findUserInfoByUserId(user.getUserId()).getUserId());
        if (userInfoDao.findUserInfoByUserId(user.getUserId()).getUserId() == 0) {
            return true;
        }else return false;
    }

    @Override
    public boolean checkUserInfoBySampleId(int userId) {
        if(userInfoDao.findUserInfoByUserId(userId).getSampleId() ==0) {
            return true;
        } else return false;
    }

    @Override
    public boolean checkUserInfoByLabId(int userId) {
        if(userInfoDao.findUserInfoByUserId(userId).getLabId() ==0){
            return true;
        } else return false;
    }

    @Override
    public void updateUserId(User user){
        User user1 = userDao.findUserByUserName(user.getUserName());
        userInfoDao.updateUserId(user1);
    }

    @Override
    public void updateSampleId(Result result,int userId) {
        int sampleId = result.getSampleId();
        userInfoDao.updateSampleIdByUserId(sampleId,userId);
    }

    @Override
    public void updateLabId(Ques ques, int userId) {
        int labId = ques.getLabId();
        userInfoDao.updateLabIdByUserId(labId,userId);
    }

}
