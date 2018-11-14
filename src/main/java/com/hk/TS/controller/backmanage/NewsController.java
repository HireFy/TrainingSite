package com.hk.TS.controller.backmanage;

import com.hk.TS.pojo.News;
import com.hk.TS.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

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

    /*新闻管理页面*/
    @RequestMapping(value = {"/manage", "/manage/{crtPage}"})
    public ModelAndView getManage(@PathVariable(required = false) Integer crtPage) {
        ModelAndView mav = new ModelAndView("newsManage");
        mav.addObject("newsList", newsService.getNews(1));
        if (crtPage == null) {
            crtPage = 1;
        }
        mav.addObject("crtPage", crtPage);
        mav.addObject("pageCount", newsService.getPageCount());
        return mav;
    }

    /*分页*/
//    @RequestMapping("/manage/{crtPage}")
//    public ModelAndView pagenation(@PathVariable int crtPage) {
//        ModelAndView mav = new ModelAndView("newsManage");
//        mav.addObject("newsList", newsService.getNews(crtPage));
//        mav.addObject("pageCount", newsService.getPageCount());
//        mav.addObject("crtPage", crtPage);
//        return mav;
//    }
}
