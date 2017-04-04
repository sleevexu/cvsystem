package com.iimr.cvsystem.dao;

import com.iimr.cvsystem.model.User;

/**
 * Created by Jiajie on 2017/4/4.
 */
public interface UserDao {

    void register(User user);
    User findUserByUserName(final String userName);

}
