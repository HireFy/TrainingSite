package com.hk.TS.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class NewsController {

    @RequestMapping("/edit")
    @ResponseBody
    public Boolean saveEdit(@RequestParam String text, HttpSession session) {
        session.setAttribute("text", text);
        return true;
    }

    @RequestMapping("/text")
    public String getText() {
        return "text";
    }

    @RequestMapping("/showdown")
    public String showDown() {
        return "showdown";
    }
}
