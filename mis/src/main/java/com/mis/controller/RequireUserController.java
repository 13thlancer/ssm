package com.mis.controller;

import com.mis.pojo.Requireorder;
import com.mis.pojo.Requireuser;
import com.mis.pojo.User;
import com.mis.service.RequireUserServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

/**
 * Created by admin on 2016/8/8.
 */
@Controller
@RequestMapping("/RequireUserController")
public class RequireUserController {

    @Autowired
    private RequireUserServiceI requireUserServiceI;

    @RequestMapping(value="/ShowAllUser",method= RequestMethod.POST)
    @ResponseBody
    public List ShowAllUser(){
        return requireUserServiceI.ShowAllUser();
    }

    @RequestMapping(value="/AddUser",method = RequestMethod.POST)
    @ResponseBody
    public String AddUser(String username,String phone,String company,HttpSession httpSession){
        if(username==null || username.trim().equals("")){
            return "用户名不能为空！";
        }
        if(phone==null || phone.trim().equals("")){
            return "联系电话不能为空！";
        }
        UUID uuid = UUID.randomUUID();
        String uuidstr = uuid.toString();
        httpSession.setAttribute("userid",uuidstr);
        httpSession.setAttribute("username", username);
        httpSession.setAttribute("phone", phone);
        httpSession.setAttribute("company", company);
        requireUserServiceI.AddUser(username, phone, company,uuidstr);
        return "OK";
    }

    @RequestMapping(value="/DeleteUser",method = RequestMethod.POST)
    @ResponseBody
    public String DeleteUser(String delid){
        requireUserServiceI.DeleteUserById(delid);
        return "OK";
    }

    @RequestMapping(value = "/UpdateUser", method = RequestMethod.POST)
    @ResponseBody
    public String UpdateUser(String id, String username, String phone, String company) {
        requireUserServiceI.UpdateUserById(id,username,phone,company);
        return "OK";
    }

    @RequestMapping(value="/checkUser",method= RequestMethod.POST,produces="text/html;charset=UTF-8")
    @ResponseBody
    public String checkUser(String username,String phone,HttpSession httpSession){
        if(username==null || username.trim().equals("")){
            return "用户名不能为空！";
        }
        if(phone==null || phone.trim().equals("")){
            return "密码不能为空！";
        }
        Requireuser ruser = requireUserServiceI.getUserByPhone(phone);
        if(ruser==null){
            return "用户名错误！";
        }
        if(!ruser.getUsername().trim().equals(username.trim())){
            return "密码错误！";
        }
        httpSession.setAttribute("username",username);
        httpSession.setAttribute("phone",phone);
        return "OK";
    }

}
