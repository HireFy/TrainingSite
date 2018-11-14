package com.hk.TS.controller.backmanage;

import com.hk.TS.pojo.News;
import com.hk.TS.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    /*存放在数据库里面*/
    @RequestMapping("/save")
    @ResponseBody
    public Boolean saveEdit(@RequestBody News news, HttpSession session) {
        return newsService.save(news, session);
    }

    @RequestMapping("/create")
    public String showDown() {
        return "createNews";
    }
}
