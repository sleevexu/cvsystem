package com.iimr.cvsystem.service.implement;

import com.iimr.cvsystem.dao.UserDao;
import com.iimr.cvsystem.model.User;
import com.iimr.cvsystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Jiajie on 2017/4/4.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User loginCheck(User user) {
        User user1 = userDao.findUserByUserName(user.getUserName());
        System.out.println("userId" + user1.getUserId() + ", userName=" + user1.getUserName() + ", password=" + user1.getUserPassword());
        if (user.getUserPassword().equals(user1.getUserPassword())) {
            return user1;
        } else {
            return null;
        }
    }

    @Override
    public boolean register(User user) {
        User user1 = userDao.findUserByUserName(user.getUserName());
        if (user1.getUserId() == 0) {
            userDao.register(user);
            System.out.println("userId" + user1.getUserId() + ", userName=" + user1.getUserName() + ", password=" + user1.getUserPassword());
            return true;
        } else {
            System.out.println("userId" + user1.getUserId() + ", userName=" + user1.getUserName() + ", password=" + user1.getUserPassword());
            return false;
        }
    }
}
