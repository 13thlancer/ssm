package com.mis.controller;

import com.mis.service.ManagerServiceI;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by admin on 2016/9/19.
 */
@Controller
@RequestMapping("/ManagerController")
public class ManagerController {

    @Autowired
    private ManagerServiceI managerServiceI;




}
