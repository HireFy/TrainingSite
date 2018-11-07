package com.hk.TS.service;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

public interface MailService {
    Boolean sendVerifyNum(String toMail, HttpSession session) throws MessagingException;

    Boolean isMailExist(String mail);

    Boolean isVerifyNumRight(Integer num, HttpSession session);
}
