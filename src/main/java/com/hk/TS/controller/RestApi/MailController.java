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

    /*TODO 检测邮箱是否存在*/
    /*发送验证码*/
    @PostMapping("/verify")
    public Boolean getVerifyNumber(@RequestBody String toMail, HttpSession session) throws MessagingException {
        return mailService.sendVerifyNum(toMail, session);
    }

    @PostMapping("/verify/{num}")
    public Boolean verifyNum(@PathVariable Integer num, HttpSession session) {
        Integer serverNum = (Integer) session.getAttribute("serverMailNum");
        return serverNum.equals(num);
    }
}
