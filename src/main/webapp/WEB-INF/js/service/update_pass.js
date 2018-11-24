/*忘记密码填写新密码*/

pass = $("#pass")
pass_box = $("#pass_info")
repass = $("#repass")
repass_box = $("#repass_info")

btn = $("[name='submit']")

pass.blur(function () {
        checkPass(pass.val(), pass_box)
        if (pass_box.text() != "") {
            btn.attr("disabled", true)
            return
        }
        btn.attr("disabled", false)
    }
)
repass.blur(function () {
        checkRepass(repass.val(), pass.val(), repass_box)
    console.log("repass_box.text(): " + repass_box.text())
        if (repass_box.text() != "") {
            btn.attr("disabled", true)
            return
        }
        btn.attr("disabled", false)
    }
)

btn.click(function () {
    if (pass.val() == "" || repass.val() == "") {
        alert("输入有误")
        return
    }
    $.ajax({
        type:"post",
        url:"/person/update",
        contentType:"application/json",
        data:JSON.stringify({
            "password":repass.val()
        }),
        dataType:"json",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            if(data){
                alert("修改成功")
                window.location.href="/user"
            }
        }
    })
})
