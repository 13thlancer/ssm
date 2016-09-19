package com.mis.service;

import com.mis.pojo.Requireorder;
import com.mis.pojo.Requireuser;

import java.util.List;

/**
 * Created by admin on 2016/8/8.
 */
public interface RequireUserServiceI {

    public void AddUser(String username,String phone,String company,String userid);

    public String SelectUserId(String phone);

    public String SelectUserCompany(String phone);

    public void DeleteUserById(String delid);

    public void UpdateUserById(String id,String username,String phone,String company);

    public List ShowAllUser();

    public Requireuser getUserByPhone(String phone);
}
