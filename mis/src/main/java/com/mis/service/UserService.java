package com.mis.service;

import com.mis.pojo.User;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2016/7/23.
 */
public interface UserService {

    public User getUserById(String id);

    public User getByuserNumber(String userNumber);

    public void RegUser(String username,String password,String sex,String birthday);
}
