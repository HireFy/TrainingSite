package com.hk.TS.controller.backmanage;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/course")
public class CourseController {

    private static Logger logger = LogManager.getLogger(CourseController.class);
    @RequestMapping("/manager/manage")
    public String course(){


        return "courseManage";
    }

    /*请求信息修改页面*/
    @GetMapping("/manager/add")
    public String getModifyPage() {
        return "courseAdd";
    }

    @RequestMapping("/manager/delete")
    public String forget() {
        return "courseDelete";
    }

    @RequestMapping("/manager/update")
    public String updatePass() {
        return "courseUpdate";
    }

}
