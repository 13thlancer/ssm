package com.mis.controller;

import com.mis.pojo.User;
import com.mis.service.UserServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2016/7/23.
 */
@Controller
@RequestMapping("/userController")
public class UserController {

    @Autowired
    private UserServiceI userService;

    @RequestMapping("/showUser")
    public String showUser(String id,HttpServletRequest request){
        User u = userService.getUserById(id);
        request.setAttribute("user",u);
        return "showUser";
    }
}
