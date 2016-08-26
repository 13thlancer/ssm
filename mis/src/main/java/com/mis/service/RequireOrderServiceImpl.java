package com.mis.service;

import com.mis.mapper.RequireorderMapper;
import com.mis.pojo.Requireorder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by admin on 2016/8/9.
 */
@Service("requireOrderService")
public class RequireOrderServiceImpl implements RequireOrderServiceI{

    @Autowired
    private RequireorderMapper requireorderMapper;

    @Override
    public void AddOrder(String username, String requirename, String num, String type, String phone, String userid, String company) {
        Requireorder rorder = new Requireorder();
        UUID uuid = UUID.randomUUID();
        String uuidstr = uuid.toString();
        Date date = new Date();
        rorder.setId(uuidstr);
        rorder.setUsername(username);
        rorder.setNum(num);
        rorder.setRequirename(requirename);
        rorder.setRequirestatus("申请中");
        rorder.setRequiredate(date);
        rorder.setRequiretype(type);
        rorder.setUserid(userid);
        rorder.setCompany(company);
        rorder.setPhone(phone);
        requireorderMapper.insert(rorder);
    }

    @Override
    public List ShowAllOrder() {
        List list = requireorderMapper.selectAll();
        return list;
    }

    @Override
    public List ShowMyOrder(String username) {
        List list = requireorderMapper.selectByUsername(username);
        return list;
    }

    @Override
    public List ShowOrderByType(String type) {
        List list = requireorderMapper.selectByType(type);
        return list;
    }

    @Override
    public void UpdateOrderStatus(String id) {
        requireorderMapper.updateStatus(id);
    }

    @Override
    public void DeleteOrderById(String id) {
        requireorderMapper.deleteByPrimaryKey(id);
    }

    @Override
    public void UpdateOrder(String id, String requirename, String num, String requiretype) {
        Requireorder rorder = new Requireorder();
        rorder.setId(id);
        rorder.setRequirename(requirename);
        rorder.setNum(num);
        rorder.setRequiretype(requiretype);
        requireorderMapper.updateById(rorder);
    }

}
