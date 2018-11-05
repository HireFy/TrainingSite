/*TODO 检查每个框的值，有任意一个不ok就disabled*/

username = $("#username")
pass = $("#password")
repass = $("#repassword")
mail = $("#email")
verify_num = $("#emailNum")

username_info = $("span[name='username_info']")
pass_info = $("span[name='pass_info']")
repass_info = $("span[name='repass_info']")
email_info = $("span[name='email_info']")

verify_button = $("[name='getVerifyNum']")
submit_button = $("[name='submit']")

register_form = $("#register_form")


/*密码*/
pass.blur(function () {
    checkPass(pass.val(), pass_info)
})
repass.blur(function () {
    checkRepass(repass.val(), pass.val(), repass_info)
})

/*点击发送验证码按钮*/
/*TODO 发送验证码的时候前端显示一个正在处理的UI，提示超时UI*/
verify_button.click(function () {
    username_val = username.val()
    pass_val = pass.val()
    repass_val = repass.val()
    mail_val = mail.val()
    verify_num_val = verify_num.val()

    if (!checkFormRight()) {
        return
    }
    sendVerifyNum(mail_val)
})


/*点击确认按钮
* 检查邮箱验证码是否为空
* 再次检查昵称是否存在
* 再次检查昵称这可以通过设置username框后面的信息来检验
* 如果存在名字就会一直显示提示信息
* 之后页面有个总的判断，判断username到底改没有改，
* 没有改设置确认按钮为不可点击*/
submit_button.click(function () {
    username_val = username.val()
    pass_val = pass.val()
    repass_val = repass.val()
    mail_val = mail.val()
    verify_num_val = verify_num.val()

    if (!checkFormRight()) {
        return
    }
    /*当点击确认按钮的时候再次获取验证码框的值*/
    verify_num_val = verify_num.val()
    if (verify_num_val == "") {
        alert("验证码不能为空")
        return
    }

    isVerifyNumRight(verify_num_val, function () {
        sendRequest()
    }, function () {
        alert("验证码不正确")
    })

})


/*失去用户名字文本框焦点时检查名字是否存在*/
/*判断username字段是否重复
* 重复的话就设置 submit button disabled
* 当检测不重复后重新激活submit button
* */
username.blur(function () {
    username_val = username.val()
    if (username_val == "") {
        username_info.text("用户昵称不能为空")
        verify_button.attr("disabled", true)
        submit_button.attr("disabled", true)
        return
    }
    username_info.text("")
    verify_button.attr("disabled", false)
    submit_button.attr("disabled", false)
    isNameExist(username_val, username_info);
})


/*检测邮箱合法*/
mail.blur(function () {
    flag = isEmail(mail.val())
    console.log(flag)
    if (!flag) {
        email_info.text("邮箱格式有误")
        verify_button.attr("disabled", true)
        submit_button.attr("disabled", true)
        return
    } else {
        email_info.text("")
        verify_button.attr("disabled", false)
        submit_button.attr("disabled", false)
    }
    isMailExist(mail.val(), email_info, verify_button)
})

/*邮箱中包含得有特殊字符@，所以这里还是要使用@ResponseBody
* 来转成字符串*/
// function isMailExist(mail_input, mail_box, button) {
//     $.ajax({
//         type: "post",
//         url: "/mail/exist",
//         data:{
//             "mail":mail.val()
//         },
//         dataType: "json",
//         error: function (error) {
//             console.log(error)
//         },
//         success: function (data) {
//             if(data){
//                 if(email_info.val() == "") {
//                     email_info.text("邮箱已存在")
//                     verify_button.attr("disabled", true)
//                 }
//             }
//             else {
//                 email_info.text("")
//                 verify_button.attr("disabled", false)
//             }
//         }
//     })
// }

/*检查表单*/
function checkFormRight() {
    if (username_val == "") {
        alert("username不能为空")
        return false
    }
    if (pass_val == "") {
        alert("password不能为空")
        return false
    }
    if (repass_val == "") {
        alert("重复密码不能为空")
        return false
    }
    if (mail_val == "") {
        alert("Email不能为空")
        return false
    }
    if (pass_val != repass_val) {
        alert(pass_val + "  " + repass_val)
        alert("两次输入密码不一致")
        return false
    }
    return true
}


/*发送请求*/

/*如果成功创建了就提交表单跳转到用户个人信息页*/
function sendRequest() {
    $.ajax({
        type: "post",
        url: "/person/create",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify({
            "name": username_val,
            "age": "",
            "mail": mail_val,
            "gender": "",
            "password": pass_val,
            "role": {},
            "info": ""
        }),
        error: function (error) {
            console.log(error)
        },
        success: function (data) {
            if (data) {
                console.log("跳转表单")
                /*跳转表单*/
                register_form.submit()
            } else {
                alert("something wrong!!!")
            }
        }
    })
}

