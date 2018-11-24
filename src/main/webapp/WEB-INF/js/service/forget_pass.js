/*忘记密码邮箱验证*/

email_input = $("#email")
email_info = $("#email_info")
num_input = $("#num")
num_info = $("#num_info")
sub_btn = $("[name='submit']")
ver_btn = $("[name='getVerifyNum']")


email_input.blur(function () {
    isMailExist(email_input.val(), email_info, ver_btn, true)
})


ver_btn.click(function () {
    sendVerifyNum(email_input.val())
})


sub_btn.click(function () {
    /*检验验证码是否正确*/
    isVerifyNumRight(num_input.val(),function () {
        /*跳转到密码修改页面*/
        window.location.href="/updatePass"
    },function () {
        alert("验证码不正确")
    })
})



/*检查文本是否为空*/
// function checkForm() {
//     if (email_input.val() == "") {
//         email_info.text("邮箱不能为空")
//         return
//     }
//     email_info.text("")
//
//     if(num_info)
// }
