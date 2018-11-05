$("#get").click(function () {
    $.ajax({
        type:"get",
        url:"/person/2",
        dataType: "json",
        error:function (data) {
            alert("error")
        },
        success:function (data) {
            console.log(data['info'])
        }
    })
})


body={
    "name":"wyb",
    "age":"23",
    "mail":"2938749823@qq.com",
    "gender":"male",
    "password":"8769asdfasd",
    "role":{
        "id":"1"
    },
    "info":"eployment of web application directory /opt/tomcat/webapps/ma"
}

$("#post").click(function () {
    $.ajax({
        type:"post",
        url:"/person/create",
        contentType: "application/json",
        data:JSON.stringify(body),
        dataType: "json",
        error:function (data) {
            alert("error")
        },
        success:function (data) {
            console.log(data['info'])
        }
    })
})