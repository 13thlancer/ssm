package com.mis.service;

import com.mis.Utils.Lucene;
import com.mis.mapper.RequireorderMapper;
import com.mis.pojo.Requireorder;
import org.apache.lucene.queryParser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
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
    public void AddOrder(String username,String conusername,String phone,String requirename,String num,String requiretype,String userid,String company) {
        Requireorder rorder = new Requireorder();
        UUID uuid = UUID.randomUUID();
        String uuidstr = uuid.toString();
        Date date = new Date();
        rorder.setId(uuidstr);
        rorder.setUsername(username);
        rorder.setConname(conusername);
        rorder.setConphone(phone);
        rorder.setRequirename(requirename);
        rorder.setNum(num);
        rorder.setRequirestatus("申请中");
        rorder.setUserid(userid);
        rorder.setRequiredate(date.toString());
        rorder.setCompany(company);
        rorder.setRequiretype(requiretype);
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
    public List ShowMyPushOrder(String username) {
        List list = requireorderMapper.selectByStatus(username);
        return list;
    }

    @Override
    public List ShowOrderByType(String type) {
        List list = requireorderMapper.selectByType(type);
        return list;
    }

    @Override
    public List Search(String search,String username) {
        Lucene lucene = new Lucene();
        List<Requireorder> rlist = requireorderMapper.selectByUsername(username);
        List list = null;
        try {
            list = lucene.search(rlist,search);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        } catch (java.text.ParseException e) {
            e.printStackTrace();
        }
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
    public void UpdateOrder(String id,String conname,String contel, String requirename, String num, String requiretype) {
        Requireorder rorder = new Requireorder();
        rorder.setId(id);
        rorder.setConname(conname);
        rorder.setConphone(contel);
        rorder.setRequirename(requirename);
        rorder.setNum(num);
        rorder.setRequiretype(requiretype);
        requireorderMapper.updateById(rorder);
    }

}
