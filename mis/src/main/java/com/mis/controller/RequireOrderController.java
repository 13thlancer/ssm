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
@RequestMapping("/RequireOrderController")
public class RequireOrderController {

    @Autowired
    private RequireOrderServiceI requireOrderServiceI;

    @Autowired
    private RequireUserServiceI requireUserServiceI;


    @RequestMapping(value = "/AddOrder",method = RequestMethod.POST)
    @ResponseBody
    public String addOrder(String username,String conusername,String phone,String require,String num,String type){
        String userid = requireUserServiceI.SelectUserId(phone);
        String company = requireUserServiceI.SelectUserCompany(phone);
        requireOrderServiceI.AddOrder(username,conusername,phone,require,num,type,userid,company);
        return "OK";
    }


    @RequestMapping(value="/ShowMyOrder",method= RequestMethod.POST)
    @ResponseBody
    public List showMyOrder(String username){
        return requireOrderServiceI.ShowMyOrder(username);
    }


    @RequestMapping(value="/ShowMyPushOrder",method= RequestMethod.POST)
    @ResponseBody
    public List showMyPushOrder(String username){
        return requireOrderServiceI.ShowMyPushOrder(username);
    }


    @RequestMapping(value="/ShowAllOrder",method=RequestMethod.POST)
    @ResponseBody
    public List showAllOrder(){
        return requireOrderServiceI.ShowAllOrder();
    }


    @RequestMapping(value = "/ShowOrderByType",method = RequestMethod.POST)
    @ResponseBody
    public List showOrderByType(String type){
        return requireOrderServiceI.ShowOrderByType(type);
    }

    @RequestMapping(value = "/Search",method = RequestMethod.POST)
    @ResponseBody
    public List search(String search,String username){
        return requireOrderServiceI.Search(search,username);
    }


    @RequestMapping(value="/PushOrder",method=RequestMethod.POST)
    @ResponseBody
    public String pushOrder(String pushid){
        requireOrderServiceI.UpdateOrderStatus(pushid);
        return "OK";
    }


    @RequestMapping(value="/DeleteOrder",method = RequestMethod.POST)
    @ResponseBody
    public String deleteOrder(String delid){
        requireOrderServiceI.DeleteOrderById(delid);
        return "OK";
    }


    @RequestMapping(value = "/UpdateOrder",method = RequestMethod.POST)
    @ResponseBody
    public String updateOrder(String id,String conname,String contel,String require,String num,String type){
        requireOrderServiceI.UpdateOrder(id,conname,contel,require,num,type);
        return "OK";
    }
}
