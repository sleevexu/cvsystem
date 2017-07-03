package com.iimr.cvsystem.service.implement;

import com.iimr.cvsystem.dao.ResultDao;
import com.iimr.cvsystem.model.Result;
import com.iimr.cvsystem.service.ResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

/**
 * Created by Jiajie on 2017/4/5.
 */
@Service
public class ResultServiceImpl implements ResultService {

    @Autowired
    private ResultDao resultDao;

    @Override
    public boolean checkSampleId(Result result,int userId) {
        int sampleId = resultDao.findSampleIdByUserId(userId);
        Result result1 = resultDao.findResultBySampleId(sampleId);
        System.out.println(result.getSampleId());
        System.out.println(result1.getSampleId());
        if(result1.equals(result)) {
            return true;
        } else return false;
    }


    @Override
    public boolean updateResult(Result result) {
        resultDao.submitResult(result);
        return true;
    }
}
