package com.iimr.cvsystem.service;

import com.iimr.cvsystem.model.Result;

import javax.servlet.http.HttpSession;

/**
 * Created by Jiajie on 2017/4/5.
 */
public interface ResultService {
    boolean checkSampleId(Result result,int userId);
    boolean updateResult(Result result);
}
