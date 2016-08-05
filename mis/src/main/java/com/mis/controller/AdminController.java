package com.mis.controller;

import com.mis.service.AdminServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by admin on 2016/7/29.
 */
@Controller
@RequestMapping("/adminController")
public class AdminController {

    private AdminServiceI adminServiceI;

    public AdminServiceI getAdminServiceI() {
        return adminServiceI;
    }
    @Autowired
    public void setAdminServiceI(AdminServiceI adminServiceI) {
        this.adminServiceI = adminServiceI;
    }

    @RequestMapping(value="/addBlog",method= RequestMethod.POST,produces="text/html;charset=UTF-8")
    @ResponseBody
    public String addBlog(String username,String recievername,String sendcontent,String picpath,int sendtype){
        if(username==null || username.trim().equals("")){
            return "用户名不能为空！";
        }
        if(sendcontent==null || sendcontent.trim().equals("")){
            return "发布内容不能为空！";
        }
        adminServiceI.AddBlog(username,recievername,sendcontent,picpath,sendtype);
        return "OK";
    }

    @RequestMapping(value = "/updateBlog",method =RequestMethod.POST,produces="text/html;charaset=UTF-8")
    @ResponseBody
    public String updateBlog(String id,String username,String recievername,String sendcontent,String picpath,int sendtype){
        if(username==null || username.trim().equals("")){
            return "用户名不能为空！";
        }
        if(sendcontent==null || sendcontent.trim().equals("")){
            return "发布内容不能为空！";
        }
        adminServiceI.UpdateBlog(id,username,recievername,sendcontent,picpath,sendtype);
        return "OK";
    }


    @RequestMapping(value="/showBlog",method= RequestMethod.POST)
    @ResponseBody
    public List ShowBlog(){
        return adminServiceI.ShowAllBlog();
    }

    @RequestMapping(value="/deleteBlog",method = RequestMethod.POST)
    @ResponseBody
    public String DeleteBlog(String delid){
        adminServiceI.DeleteBlogById(delid);
        return "OK";
    }
}
