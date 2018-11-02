package com.hk.TS.util;

import javax.mail.MessagingException;

import static org.junit.Assert.*;

public class MailUtilTest {
    public static void main(String[] args) throws MessagingException {
        MailUtil mailUtil = new MailUtil();
        System.out.println(mailUtil.getAndSendVerifyNumber("994831363@qq.com"));
    }

}