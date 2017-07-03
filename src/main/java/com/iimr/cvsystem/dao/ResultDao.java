package com.iimr.cvsystem.dao;

import com.iimr.cvsystem.model.Result;

import javax.servlet.http.HttpSession;

/**
 * Created by Jiajie on 2017/4/5.
 */
public interface ResultDao {
    int findSampleIdByUserId(int userId);
    Result findResultBySampleId(int sampleId);
    void submitResult(Result result);
}
