function update(){


    var userid = $("#userid").val();
    var username = $("#username").val();
    var gender = $("#gender").val();
    var age = $("#age").val();
    var mali = $("#email").val();
    var password = $("#password").val();
    // alert(userid + username + age + gender + mali + password)
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"); //正则表达式
    var obj = document.getElementById("email"); //要验证的对象
    if(obj.value === ""){ //输入不能为空
        alert("邮箱输入不能为空!");
        return false;
    }else if(!reg.test(obj.value)) { //正则验证不通过，格式不对
        alert("请输入正确的邮箱");
        return false;
    }
      // $.ajax({
      //     type: "post",
      //     url: "/mail/exist",
      //     contentType: "application/json",
      //     dataType: "json",
      //     data: JSON.stringify(mali),
      //     error: function (error) {
      //         console.log(error)
      //     },
      //     success: function (data) {
      //         console.log(data)
      //         alert("邮箱已经存在")
      //     }
      // })
        // else{
    //     alert("通过！");
    //     return true;
    // }

    else if (userid !=""&&username !=""&&password !=""&&mali !=""&&age !=""&&gender !=""){
        $.ajax({
            type: "post",
            url: "/person/update",
            contentType: "application/json",
            dataType: "json",
            data: JSON.stringify({
                "id": userid,
                "name": username,
                "age":age,
                "gender":gender,
                "password": password,
                "mail":mali,

            }),
            error: function (error) {
                console.log(error)
            },
            success: function (data) {
                console.log(data)
                alert("修改成功")
            }
        })
    }
    else if(userid ==""){
        alert("请输入id")
    }
    else if(username ==""){
        alert("请输入需要修改的用户名")
    }
    else if(password ==""){
        alert("请输入需要修改的密码")
    }
    else if(age ==""){
        alert("请输入修改后的年龄")
    }
    else if(gender ==""){
        alert("请输入修改后的性别")
    }
    else if(mali ==""){
        alert("请输入修改后的邮箱")
    }



}