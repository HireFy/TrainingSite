package com.hk.TS.controller.backmanage;

import com.hk.TS.service.impl.MailServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/mail")
public class MailController {

    @Autowired
    private MailServiceImpl mailService;

    /*TODO 有时候用户输入的邮箱是不存在的。但是邮箱格式正确，这时发送邮件会报错找不到目标地址
     */
    /*检测邮箱是否存在*/
    @PostMapping("/exist")
    public Boolean isMailExist(@RequestParam String mail) {
        return mailService.isMailExist(mail);
    }

    /*发送验证码*/
    @PostMapping("/num")
    public Boolean getVerifyNumber(@RequestParam String toMail, HttpSession session) throws MessagingException {
        return mailService.sendVerifyNum(toMail, session);
    }

    /*检测前端发送的验证码是否正确*/
    @PostMapping("/verify")
    public Boolean verifyNum(@RequestBody Integer num, HttpSession session) {
        return mailService.isVerifyNumRight(num, session);
    }
}
