package com.hk.TS.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Index2 {
    private static Logger logger = LogManager.getLogger(Index.class);

    @RequestMapping("/create")
    public ModelAndView index() {
//        logger.info("servlet已经找到");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("register");
        return modelAndView;

    }
}
