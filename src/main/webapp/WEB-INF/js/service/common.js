/*
* 所有函数的参数传进函数的时候都必须是一个确定的值
* 比如有一个函数f(mail)要获得mail的值，调用函数的
* 时候要这样：f(mail.val())，直接把mail的值传进去
* 而不是在函数f里面再次调用.val()方法
* */


/*检验邮箱*/
function isEmail(mail) {
    var patten = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/);
    if (patten.test(mail)) {
        return true
    } else
        return false
}

/*提交指定表单*/
function getUserIndex(form) {
    form.submit()
}


/*检测名字是否重复,并设置name文本框下的消息box的值显示信息*/
function isNameExist(name, name_info_box) {
    $.ajax({
        type: "post",
        url: "/person/name/exist",
        dataType: "json",
        data: {
            "name": name
        },
        error: function (error) {
            console.log(error)
        },
        success: function (data) {
            if (data) {
                /*如果名字存在， submit button attr['disabled',true]*/
                if (name_info_box.val() == "") {
                    name_info_box.text("昵称已存在")
                }
            } else {
                /*名字不存在， submit button attr['disabled',false]*/
                name_info_box.text("")
            }
        }
    })
}


/*如果reverse==true，就反转设置mail_box的值*/
function isMailExist(mail, mail_box, button, reverse = false) {
    if (mail == "") {
        mail_box.text("邮箱不能为空")
        return
    }
    console.log("reverse: " + reverse);
    $.ajax({
        type: "post",
        url: "/mail/exist",
        data: {
            "mail": mail
        },
        dataType: "json",
        error: function (error) {
            console.log(error)
        },
        success: function (data) {
            if (data) {
                if (mail_box.val() == "") {
                    if (reverse) {
                        mail_box.text("")
                        button.attr("disabled", false)
                    } else {
                        mail_box.text("邮箱已存在")
                        button.attr("disabled", true)
                    }
                }
            }
            else {
                if (reverse) {
                    mail_box.text("邮箱不存在")
                    button.attr("disabled", true)
                } else {
                    mail_box.text("")
                    button.attr("disabled", false)
                }
            }
        }
    })
}


/*TODO 验证码设置生命周期，一定时间后失效，当*/

/*发送验证码*/
function sendVerifyNum(mail_val) {
    $.ajax({
        type: "post",
        url: "/mail/num",
        data: {
            "toMail":mail_val
        },
        dataType: "json",
        error: function (error) {
            console.log(error)
        },
        success: function (data) {
            if (data) {
                alert("验证码已发送！")
            }
        }
    })
}


/*检测验证码是否正确*/
function isVerifyNumRight(num, successFunc, failFunc) {
    $.ajax({
        type: "post",
        url: "/mail/verify",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(num),
        error: function (error) {
            console.log(error)
        },
        success: function (data) {
            if (data) {
                successFunc()
            } else {
                failFunc()
            }
        }
    })
}


/*检测密码框*/
function checkPass(pass, pass_box) {
    console.log("checkPass")
    if (pass == "") {
        pass_box.text("密码不能为空")
        return
    }
    pass_box.text("")
}
function checkRepass(repass, pass, repass_box) {
    if (repass != pass) {
        repass_box.text("密码不一致")
        return
    }
    repass_box.text("")
}