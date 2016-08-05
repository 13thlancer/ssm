package com.mis.service;

import com.mis.pojo.Blog;

import java.util.List;

/**
 * Created by admin on 2016/7/29.
 */
public interface AdminServiceI {
    public void AddBlog(String username,String recievername,String sendcontent,String picpath,int sendtype);

    public List<Blog> ShowAllBlog();

    public void DeleteBlogById(String id);

    public void UpdateBlog(String id, String username, String recievername, String sendcontent, String picpath, int sendtype);
}
