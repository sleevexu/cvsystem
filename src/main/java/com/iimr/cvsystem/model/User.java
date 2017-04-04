package com.iimr.cvsystem.model;

/**
 * Created by Jiajie on 2017/4/4.
 */
public class User {
    private int userId;
    private String userName;
    private String userPassword;

    public User(){
        super();
    }

    public User(String name, String pwd){
        this.userName = name;
        this.userPassword = pwd;
    }

    public User(int id, String name, String pwd){
        this.userId = id;
        this.userName = name;
        this.userPassword = pwd;
    }

    public int getUserId(){
        return userId;
    }

    public void setUserId(int userId){
        this.userId = userId;
    }

    public String getUserName(){
        return userName;
    }

    public void setUserName(String userName){
        this.userName = userName ==null?null :userName.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword ==null ? null :userPassword.trim();
    }
}
