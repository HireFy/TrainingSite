package com.hk.TS.controller.backmanage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManageController {

    @RequestMapping("/manage")
    public String getManage() {
        return "manage";
    }
}
