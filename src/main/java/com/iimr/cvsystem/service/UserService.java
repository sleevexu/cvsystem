package com.iimr.cvsystem.service;

import com.iimr.cvsystem.model.User;

/**
 * Created by Jiajie on 2017/4/4.
 */
public interface UserService {
    boolean register(User user);
    User loginCheck(User user);
}
