package com.hk.TS.service.impl;

import com.hk.TS.pojo.Person;
import com.hk.TS.service.MailService;
import com.hk.TS.service.impl.PersonServiceImpl;
import com.hk.TS.util.MailUtil;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Service
public class MailServiceImpl implements MailService {

    @Autowired
    private PersonServiceImpl personService;

    /*发送验证码*/
    public Boolean sendVerifyNum(String toMail, HttpSession session) throws MessagingException {

        /*TODO 有个东西, 能够统一所有信息的返回格式,返回当前的状态码, 以及返回说明信息*/

        /*邮箱不存在才发送, 存在就返回邮箱已存在*/
        MailUtil mailUtil = new MailUtil();
        Integer serverNumber = Integer.valueOf(mailUtil.getAndSendVerifyNumber(toMail));
        session.setAttribute("serverMailNum", serverNumber);
        /*添加session中当前邮箱*/
        session.setAttribute("mail", toMail);

        /*测试用*/
        System.out.println("后端验证码： " + serverNumber);

        return serverNumber > 0;
    }

    public Boolean isMailExist(String mail) {
        return personService.isMailExist(mail);
    }

    public Boolean isVerifyNumRight(Integer num, HttpSession session) {
        Boolean flag = false;
        Integer serverNum = (Integer) session.getAttribute("serverMailNum");
        System.out.println("验证码： " + serverNum);
        if (serverNum == null || num == null) {
            return false;
        }
        if (serverNum.equals(num)) {
            flag = true;
        } else {
            /*验证码不正确说明当前用户的邮箱无效*/
            /*移除session中存放的邮箱*/
            session.removeAttribute("mail");
        }
        return flag;
    }

}
