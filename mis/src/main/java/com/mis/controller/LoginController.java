package com.mis.controller;

import com.mis.pojo.User;
import com.mis.service.UserServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/7/24.
 */
@Controller
@RequestMapping("/LoginController")
public class LoginController {

    private UserServiceI userService;

    public UserServiceI getUserService() {
        return userService;
    }

    @Autowired
    public void setUserService(UserServiceI userService) {
        this.userService = userService;
    }

    @RequestMapping(value="/checkUser",method= RequestMethod.POST,produces="text/html;charset=UTF-8")
    @ResponseBody
    public String checkUser(String username,String UserPassWord,HttpSession httpSession){
        if(username==null || username.trim().equals("")){
           return "用户名不能为空！";
        }
        if(UserPassWord==null || UserPassWord.trim().equals("")){
            return "密码不能为空！";
        }
        User user = userService.getByuserNumber(username);
        if(user==null){
            return "用户名错误！";
        }
        if(!user.getPassword().trim().equals(UserPassWord.trim())){
            return "密码错误！";
        }
//        httpSession.setAttribute("username", username);
        return "OK";
    }

    @RequestMapping(value="/RegUser",method= RequestMethod.POST,produces="text/html;charset=UTF-8")
    @ResponseBody
    public String RegUser(String username,String password,String sex,String birthday){
        if(username==null || username.trim().equals("")){
            return "用户名不能为空！";
        }
        if(password==null || password.trim().equals("")){
            return "密码不能为空！";
        }
        userService.RegUser(username,password,sex,birthday);
        return "OK";
    }
}
