package com.hk.TS.controller;

import com.hk.TS.service.impl.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/*与前端交互的用户Controller*/
@Controller
public class UserController {

    @Autowired
    private PersonServiceImpl personService;

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    /*通过email返回user视图*/
    @RequestMapping("/user")
    public String getUserPage(HttpSession session) {
        return "user";
    }

    /*请求信息修改页面*/
    @GetMapping("/modify")
    public String getModifyPage() {
        return "modify";
    }

    @RequestMapping("/forget")
    public String forget() {
        return "forgetpass";
    }

    @RequestMapping("/updatePass")
    public String updatePass() {
        return "updatePass";
    }

    @RequestMapping("/super_admin_news")
    public  String super_admin_news(){return "super_admin_news";}
}
