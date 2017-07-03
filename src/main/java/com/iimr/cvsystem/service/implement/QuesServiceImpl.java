package com.iimr.cvsystem.service.implement;

import com.iimr.cvsystem.dao.QuesDao;
import com.iimr.cvsystem.model.Ques;
import com.iimr.cvsystem.service.QuesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Jiajie on 2017/4/9.
 */
@Service
public class QuesServiceImpl implements QuesService{
    @Autowired
    private QuesDao quesDao;

    @Override
    public boolean checkLabId(Ques ques, int userId) {
        int labId = quesDao.findLabIdByUserId(userId);
        Ques ques1 = quesDao.findQuesByLabId(labId);
        if(ques1.getLabId() == ques.getLabId()){
            return true;
        }
        else return false;
    }

    @Override
    public boolean updateQuesinResult(Ques ques, int userId) {
        quesDao.updateLabIdByUserId(ques,userId);
        quesDao.updateLabNameByLabId(ques);
        return true;
    }

    @Override
    public boolean updateQuesinQuse(Ques ques, int labId) {
        quesDao.submitQues(ques,labId);
        return true;
    }
}
