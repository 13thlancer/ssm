package com.mis.service;

import java.util.List;

/**
 * Created by admin on 2016/8/9.
 */
public interface RequireOrderServiceI {
    public void AddOrder(String username,String requirename,String num,String requiretype,String phone,String userid,String company);

    public List ShowAllOrder();

    public List ShowMyOrder(String username);

    public List ShowOrderByType(String type);

    public void UpdateOrderStatus(String id);

    public void DeleteOrderById(String id);

    public void UpdateOrder(String id,String requirename,String num,String requiretype);

}
