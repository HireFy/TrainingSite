mail_input = $(":text")
pass_input = $(":password")
email_info = $("span[name='email_info']")
submit_button = $("[name='submit']")

submit_button.click(function () {
    /*当按钮按下的时候获取值*/
    mail_val = mail_input.val()
    pass_val = pass_input.val()

    if (isEmail(mail_val)) {
        email_info.text("")
        send_info();
    } else
        email_info.text("请输入正确的邮箱格式")

})

/*发送邮箱密码到后台*/
function send_info() {
    $.ajax({
        type: "post",
        url: "/person/password/verify",
        contentType: "application/json",
        data: JSON.stringify({
            "mail": mail_val,
            "password": pass_val
        }),
        dataType: "json",
        error: function (data) {
            console.log(data)
        },
        success: function (data) {
            process(data)
        }
    })
}

/*处理返回的结果
* true: 跳转到用户首页
* false: 提示邮箱或密码错误*/
function process(data) {
    if (data == true) {
        window.location.href = "/index"
    } else {
        alert("密码错误")
    }
}

/*检验邮箱*/
function isEmail(mail) {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (filter.test(mail)) {
        return true;
    } else {
        return false;
    }
}