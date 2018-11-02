package com.hk.TS.controller.RestApi;

import com.hk.TS.service.MailService;
import com.hk.TS.util.MailUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/mail")
public class MailController {

    @Autowired
    private MailService mailService;

    /*检测邮箱是否存在*/
    @PostMapping("/exist")
    public Boolean isMailExist(@RequestBody String mail) {
        System.out.println("服务端收到的邮箱 " + mail);
        return mailService.isMailExist(mail);
    }

    /*发送验证码*/
    @PostMapping("/num")
    public Boolean getVerifyNumber(@RequestBody String toMail, HttpSession session) throws MessagingException {
        return mailService.sendVerifyNum(toMail, session);
    }

    /*检测前端发送的验证码是否正确*/
    @PostMapping("/verify")
    public Boolean verifyNum(@RequestBody Integer num, HttpSession session) {
        Integer serverNum = (Integer) session.getAttribute("serverMailNum");
        return serverNum.equals(num);
    }
}
