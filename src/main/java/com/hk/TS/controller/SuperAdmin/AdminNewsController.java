package com.hk.TS.controller.SuperAdmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping
public class AdminNewsController {
    //	自动注入对象
    @Autowired
    private TeacherService service;
    @Autowired
    private Teacher teacher;

    @RequestMapping("teachers.do")
    @ResponseBody
    public Object teacherList() {
        List<Teacher> list = service.findTeacher();
        return list;
    }
}
