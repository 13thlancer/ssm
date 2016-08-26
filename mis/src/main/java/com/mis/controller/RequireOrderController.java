package com.mis.controller;

import com.mis.service.RequireOrderServiceI;
import com.mis.service.RequireUserServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by admin on 2016/8/9.
 */
@Controller
@RequestMapping("/requireOrderController")
public class RequireOrderController {

    private RequireOrderServiceI requireOrderServiceI;

    @Autowired
    private RequireUserServiceI requireUserServiceI;

    public RequireOrderServiceI getRequireOrderServiceI() {
        return requireOrderServiceI;
    }

    @Autowired
    public void setRequireOrderServiceI(RequireOrderServiceI requireOrderServiceI) {
        this.requireOrderServiceI = requireOrderServiceI;
    }

    @RequestMapping(value = "/addOrder",method = RequestMethod.POST)
    @ResponseBody
    public String addOrder(String username,String require,String num,String type,String phone){
       String userid =  requireUserServiceI.SelectUserId(phone);
        String company =  requireUserServiceI.SelectUserCompany(phone);
        requireOrderServiceI.AddOrder(username,require,num,type,phone,userid,company);
        return "OK";
    }

    @RequestMapping(value="/showMyOrder",method= RequestMethod.POST)
    @ResponseBody
    public List showMyOrder(String username){
        return requireOrderServiceI.ShowMyOrder(username);
    }

    @RequestMapping(value="/showAllOrder",method=RequestMethod.POST)
    @ResponseBody
    public List showAllOrder(){
        return requireOrderServiceI.ShowAllOrder();
    }

    @RequestMapping(value = "/showOrderByType",method = RequestMethod.POST)
    @ResponseBody
    public List showOrderByType(String type){
        return requireOrderServiceI.ShowOrderByType(type);
    }

    @RequestMapping(value="/pushOrder",method=RequestMethod.POST)
    @ResponseBody
    public String pushOrder(String pushid){
        requireOrderServiceI.UpdateOrderStatus(pushid);
        return "OK";
    }

    @RequestMapping(value="/deleteOrder",method = RequestMethod.POST)
    @ResponseBody
    public String deleteOrder(String delid){
        requireOrderServiceI.DeleteOrderById(delid);
        return "OK";
    }

    @RequestMapping(value = "/updateOrder",method = RequestMethod.POST)
    @ResponseBody
    public String updateOrder(String id,String requirename,String num,String type){
        requireOrderServiceI.UpdateOrder(id,requirename,num,type);
        return "OK";
    }
}
