package com.hk.TS.controller.backmanage;

import com.hk.TS.pojo.Person;
import com.hk.TS.service.impl.PersonServiceImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*与前端交互的用户Controller*/
@Controller
public class UserController {

    private static Logger logger = LogManager.getLogger(UserController.class);

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
    /*TODO 区分开role为1和role为2的登录成功页面*/
    @RequestMapping("/user")
    public ModelAndView getUserPage(HttpSession session) {
        return personService.byPassView(session);
    }

    /*分页*/
    @RequestMapping("/user/{crtPage}")
    public ModelAndView userPagenation(@PathVariable int crtPage) {

        logger.info("crtPage: " + crtPage);

        ModelAndView mav = new ModelAndView("superAdminBoot");
        List<Person> personList = personService.getPersons(crtPage);
        mav.addObject("personList", personList);
        mav.addObject("crtPage", crtPage);
        mav.addObject("pageCount", personService.getPageCount());
        return mav;
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
}