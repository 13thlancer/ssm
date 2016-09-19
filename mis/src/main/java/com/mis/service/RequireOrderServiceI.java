package com.mis.service;

import java.util.List;

/**
 * Created by admin on 2016/8/9.
 */
public interface RequireOrderServiceI {

    public void AddOrder(String username,String conusername,String phone,String requirename,String num,String requiretype,String userid,String company);

    public List ShowAllOrder();

    public List ShowMyOrder(String username);

    public List ShowMyPushOrder(String username);

    public List ShowOrderByType(String type);

    public List Search(String search,String username);

    public void UpdateOrderStatus(String id);

    public void DeleteOrderById(String id);

    public void UpdateOrder(String id,String conname,String contel,String requirename,String num,String requiretype);

}
