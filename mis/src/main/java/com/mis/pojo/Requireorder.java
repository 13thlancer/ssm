package com.mis.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class Requireorder {
    private String id;

    private String userid;

    private String username;

    private String phone;

    private String company;

    private String num;

    private String requirename;

    private Date requiredate;

    private String requiretype;

    private String requirestatus;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public String getRequirename() {
        return requirename;
    }

    public void setRequirename(String requirename) {
        this.requirename = requirename == null ? null : requirename.trim();
    }

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    public Date getRequiredate() {
        return requiredate;
    }

    public void setRequiredate(Date requiredate) {
        this.requiredate = requiredate;
    }

    public String getRequiretype() {
        return requiretype;
    }

    public void setRequiretype(String requiretype) {
        this.requiretype = requiretype == null ? null : requiretype.trim();
    }

    public String getRequirestatus() {
        return requirestatus;
    }

    public void setRequirestatus(String requirestatus) {
        this.requirestatus = requirestatus == null ? null : requirestatus.trim();
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}