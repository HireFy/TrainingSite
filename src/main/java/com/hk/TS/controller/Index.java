package com.hk.TS.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Index {
    private static Logger logger = LogManager.getLogger(Index.class);

    @RequestMapping("/test")
    public String test() {
        logger.info("servlet已经找到");
        return "loginTest";
    }


    @RequestMapping("/index")
    public String index() {
        return "/WEB-INF/jsp/user.jsp";

    }
}
