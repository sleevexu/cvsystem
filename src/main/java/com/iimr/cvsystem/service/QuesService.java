package com.iimr.cvsystem.service;

import com.iimr.cvsystem.model.Ques;

/**
 * Created by Jiajie on 2017/4/9.
 */
public interface QuesService {
    boolean checkLabId(Ques ques, int userId);
    boolean updateQuesinResult(Ques ques, int userId);
    boolean updateQuesinQuse(Ques ques,int userId);
}
