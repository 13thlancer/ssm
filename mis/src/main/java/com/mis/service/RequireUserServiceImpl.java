package com.mis.service;

import com.mis.mapper.RequireuserMapper;
import com.mis.pojo.Requireorder;
import com.mis.pojo.Requireuser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by admin on 2016/8/8.
 */
@Service("requireUserService")
public class RequireUserServiceImpl implements RequireUserServiceI{
    @Autowired
    private RequireuserMapper requireuserMapper;

    public RequireuserMapper getRequireuserMapper() {
        return requireuserMapper;
    }

    public void setRequireuserMapper(RequireuserMapper requireuserMapper) {
        this.requireuserMapper = requireuserMapper;
    }

    @Override
    public void AddUser(String username, String phone, String company,String userid) {
        Requireuser ruser = new Requireuser();
        Date date = new Date();
        ruser.setId(userid);
        ruser.setUsername(username);
        ruser.setPhone(phone);
        ruser.setCompany(company);
        ruser.setTime(date);
        requireuserMapper.insert(ruser);
    }

    @Override
    public String SelectUserId(String phone) {
        String userid = requireuserMapper.selectByPhone(phone);
        return userid;
    }

    @Override
    public String SelectUserCompany(String phone) {
        String company = requireuserMapper.selectCompanyByPhone(phone);
        return company;
    }

    @Override
    public void DeleteBlogById(String delid) {
        requireuserMapper.deleteByPrimaryKey(delid);
    }

    @Override
    public List ShowAllUser() {
        List list = requireuserMapper.selectAll();
        return list;
    }

    @Override
    public Requireuser getUserByPhone(String phone) {
        return requireuserMapper.selectByPrimaryKey(phone);
    }
}
