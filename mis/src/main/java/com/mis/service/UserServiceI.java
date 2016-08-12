package com.mis.service;

import com.mis.pojo.User;


/**
 * Created by Administrator on 2016/7/23.
 */
public interface UserServiceI {

    public User getUserById(String id);

    public User getByuserNumber(String userNumber);

    public void RegUser(String username,String password,String sex,String birthday);
}
