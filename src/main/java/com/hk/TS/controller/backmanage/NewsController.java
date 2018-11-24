package com.hk.TS.controller.backmanage;

import com.hk.TS.pojo.News;
import com.hk.TS.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    /*存放在数据库里面*/
    @RequestMapping("/save")
    @ResponseBody
    public Boolean saveEdit(@RequestParam("title") String title,
                            @RequestParam("newsTypeId") Long newsTypeId,
                            @RequestParam("text") String content,
                            HttpSession session) {
        News news = new News(title, content, newsTypeId);

        return newsService.save(news, session);
    }

    @RequestMapping("/create")
    public String showDown() {
        return "editNews";
    }

    /*新闻管理页面*/
    @RequestMapping(value = {"/manage", "/manage/{crtPage}"})
    public ModelAndView getManage(@PathVariable(required = false) Integer crtPage) {
        ModelAndView mav = new ModelAndView("newsManage");
        mav.addObject("newsList", newsService.transFormData(newsService.getNews(1)));
        if (crtPage == null) {
            crtPage = 1;
        }
        mav.addObject("crtPage", crtPage);
        mav.addObject("pageCount", newsService.getPageCount());
        return mav;
    }

    @RequestMapping("/edit")
    public ModelAndView edit(@RequestParam Long newsId) {
        News news = newsService.getById(newsId);
        ModelAndView mav = new ModelAndView("editNews");
        mav.addObject("news", newsService.transFormData(news));

        return mav;
    }

    @RequestMapping("/update")
    @ResponseBody
    public Boolean update(@RequestParam("newsId") Long id,
                          @RequestParam("title") String title,
                          @RequestParam("newsTypeId") Long newsTypeId,
                          @RequestParam("text") String content) {
        News news = new News(id, title, content, newsTypeId);
        return newsService.update(news);
    }

    @RequestMapping("/delete/{id}")
    @ResponseBody
    public Boolean delete(@PathVariable Long id) {
        return newsService.deleteById(id);
    }


    /*查看tinymce表单的传送内容*/
    @RequestMapping("/content")
    @ResponseBody
    public Boolean getContent(@RequestParam("text") String text,
                              @RequestParam("title") String title,
                              @RequestParam("newsTypeId") Long newsTypeId) {
        System.out.println(title);
        System.out.println(text);
        System.out.println(newsTypeId);
        return true;
    }

}
