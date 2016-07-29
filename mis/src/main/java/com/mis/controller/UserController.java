package com.mis.controller;

import com.mis.pojo.User;
import com.mis.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/7/23.
 */
@Controller
@RequestMapping("/userController")
public class UserController {

    private UserService userService;

    public UserService getUserService() {
        return userService;
    }

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/showUser")
    public String showUser(String id,HttpServletRequest request){
        User u = userService.getUserById(id);
        request.setAttribute("user",u);
        return "showUser";
    }

}
