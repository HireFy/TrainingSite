function update(){

    var userid = $("#userid").val();
    var username = $("#username").val();
    var password = $("#password").val();
    var info= $("#info").val();
    var mali= $("#email").val();
    alert(mali)
    $.ajax({
        type: "post",
        url: "/mail/exist",
        contentType: "application/json",
        dataType: "json",
        data: JSON.stringify(mali),
        error: function (error) {
            console.log(error)
            alert("邮箱已经存在，不可用")
        },
        success: function (data) {
            console.log(data)
            alert("邮箱可用")
        }
    })
    // if (userid !=""&&username !=""&&password !=""&&info !="") {
    //     $.ajax({
    //         type: "post",
    //         url: "/person/update",
    //         contentType: "application/json",
    //         dataType: "json",
    //         data: JSON.stringify({
    //             "id": userid,
    //             "name": username,
    //             "password": password,
    //             "info": info
    //         }),
    //         error: function (error) {
    //             console.log(error)
    //         },
    //         success: function (data) {
    //             console.log(data)
    //             alert("修改成功")
    //         }
    //     })
    // }
    // else if(userid ==""){
    //     alert("请输入id")
    // }
    // else if(username ==""){
    //     alert("请输入需要修改的用户名")
    // }
    // else if(password ==""){
    //     alert("请输入需要修改的密码")
    // }
    // else if(info ==""){
    //     alert("请输入修改后的备注信息")
    // }

    // if(userid !="") {
    //     $.ajax({
    //         type: "post",
    //         url: "/person/update",
    //         async: false,
    //         dataType: "json",
    //         data: JSON.stringify(data = {
    //             "id": userid, "name": username, "password": password
    //         }),
    //
    //         error: function (data) {
    //             alert("error")
    //         },
    //         success: function (data) {
    //             // console.log(data['info'])
    //             // alert(data['name'])
    //             alert(data['name'])
    //             return data
    //         }
    //     })
    // }
    // else {
    //     alert(username)
    // }



}