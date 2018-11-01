package com.hk.TS.service;

import com.hk.TS.pojo.Person;
import com.hk.TS.service.impl.PersonServiceImpl;
import com.hk.TS.util.MailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Service
public class MailService {

    @Autowired
    private PersonServiceImpl personService;

    /*发送验证码*/
    public Boolean sendVerifyNum(String toMail, HttpSession session) throws MessagingException {

        /*TODO
        * 应该有个东西, 能够统一所有信息的返回格式,
        * 返回当前的状态码, 以及返回说明信息*/

        /*邮箱不存在才发送, 存在就返回邮箱已存在*/

        MailUtil mailUtil = new MailUtil();
        Integer serverNumber = Integer.valueOf(mailUtil.getAndSendVerifyNumber(toMail));
        session.setAttribute("serverMailNum", serverNumber);
        return serverNumber > 0;
    }

    /*检查邮箱是否存在*/
    public Boolean isMailExist(String mail) {
        List<Person> people = personService.getAllPersons();
        List<String> mails = new ArrayList<>();
        for (Person person : people) {
            mails.add(person.getMail());
        }
        return mails.contains(mail);
    }
}
