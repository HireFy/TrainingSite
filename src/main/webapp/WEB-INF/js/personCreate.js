function create(){


    var username = $("#username").val();
    var age = $("#age").val();
    var gender = $("#gender").val();
    var password = $("#password").val();
    var role = $("#role").val();
    var mail = $("#mail").val();
    var info= $("#info").val();

    if (username !=""&&password !=""&&info !="") {
        $.ajax({
            type: "post",
            url: "/person/create",
            contentType: "application/json",
            dataType: "json",
            // String name, Integer age, String gender, String password, Role role, String mail,String info
            data: JSON.stringify({

                "name": username,
                "age":age,
                "gender":gender,
                "password": password,
                "role":role,
                "mail":mail,
                "info": info
            }),
            error: function (error) {
                console.log(error)
            },
            success: function (data) {
                console.log(data)
                alert("创建成功")
            }
        })
    }

    else if(username ==""){
        alert("请输入用户名")
    }
    else if(password ==""){
        alert("请输入密码")
    }
    else if(info ==""){
        alert("请输入备注信息")
    }




}