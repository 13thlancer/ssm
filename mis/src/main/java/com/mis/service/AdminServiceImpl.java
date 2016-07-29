package com.mis.service;

import com.mis.mapper.BlogMapper;
import com.mis.pojo.Blog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by admin on 2016/7/29.
 */
@Service("adminService")
public class AdminServiceImpl implements AdminServiceI{

    @Autowired
    private BlogMapper blogMapper;

    public BlogMapper getBlogMapper() {
        return blogMapper;
    }

    public void setBlogMapper(BlogMapper blogMapper) {
        this.blogMapper = blogMapper;
    }

   @Override
    public void AddBlog(String username,String recievername,String sendcontent,String picpath,int sendtype){
        Blog blog = new Blog();
        UUID uuid = UUID.randomUUID();
        String uuidstr = uuid.toString();
        Date date = new Date();
        blog.setId(uuidstr);
        blog.setSenderid(username);
        blog.setReciverid(recievername);
        blog.setSendcontent(sendcontent);
        blog.setPicpath(picpath);
        blog.setType(sendtype);
        blog.setSenddate(date);
        blogMapper.insert(blog);
    }

    @Override
    public List ShowAllBlog() {
        List list = blogMapper.selectAll();
        return list;
    }

    @Override
    public void DeleteBlogById(String id){
        blogMapper.deleteByPrimaryKey(id);
    }
}
