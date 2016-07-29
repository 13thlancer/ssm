package com.mis.service;

import com.mis.mapper.UserMapper;
import com.mis.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2016/7/23.
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    //User接口
    @Autowired
    private UserMapper userMapper;

    public UserMapper getUserMapper() {
        return userMapper;
    }

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User getUserById(String id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public User getByuserNumber(String userNumber) {
        return userMapper.selectByuserNumber(userNumber);
    }

    @Override
    public void RegUser(String username, String password, String sex, String birthday) {
       User user = new User();
        UUID uuid = UUID.randomUUID();
        String uuidstr = uuid.toString();
        user.setId(uuidstr);
        user.setUsername(username);
        user.setPassword(password);
        user.setSex(sex);
        user.setBirthday(birthday);
        userMapper.insertUser(user);
    }
}
