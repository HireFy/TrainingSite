package com.hk.TS.controller;

import com.hk.TS.service.impl.PersonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class LoginAndRegister {

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

    @PostMapping("/user")
    public String getUserPage(@RequestParam String email, HttpSession session) {
        session.setAttribute("name", personService.getByMail(email).getName());
        return "user";
    }
}
