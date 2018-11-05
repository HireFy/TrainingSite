
<%--
  Created by IntelliJ IDEA.
  User: 王弋彬
  Date: 2018/11/1
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="js/personUpdate.js"></script>
    <title>注册页面</title>
</head>

<%--<script type="text/javascript">--%>
    <%--function update(){--%>

        <%--var userid = $("#userid").val();--%>
        <%--var username = $("#username").val();--%>
        <%--var password = $("#password").val();--%>
        <%--var info= $("#info").val();--%>

        <%--if (userid !=""&&username !=""&&password !=""&&info !="")  {--%>
            <%--$.ajax({--%>
                <%--type: "post",--%>
                <%--url: "/person/update",--%>
                <%--contentType: "application/json",--%>
                <%--dataType: "json",--%>
                <%--data: JSON.stringify({--%>
                    <%--"id": userid,--%>
                    <%--"name": username,--%>
                    <%--"password": password,--%>
                    <%--"info": info--%>
                <%--}),--%>
                <%--error: function (error) {--%>
                    <%--console.log(error)--%>
                <%--},--%>
                <%--success: function (data) {--%>
                    <%--console.log(data)--%>
                    <%--alert("修改成功")--%>
                <%--}--%>
            <%--})--%>
        <%--}--%>
        <%--else if(userid ==""){--%>
            <%--alert("请输入id")--%>
        <%--}--%>
        <%--else if(username ==""){--%>
            <%--alert("请输入需要修改的用户名")--%>
        <%--}--%>
        <%--else if(password ==""){--%>
            <%--alert("请输入需要修改的密码")--%>
        <%--}--%>
        <%--else if(info ==""){--%>
            <%--alert("请输入修改后的备注信息")--%>
        <%--}--%>




    <%--}--%>
<%--</script>--%>
<body>
<form>
    <input type="text" id="userid" placeholder="请输入id" required>
    <br>
    <input type="text" id="username" placeholder="请输入用户名" required>
    <br>
    <input type="password" id="password" placeholder="输入密码" required>
    <br>
    <input type="text" id="info" placeholder="请输入备注" required>
    <br>
    <span>邮箱：
        <input  type="text" placeholder="Email" id="email" maxlength="25"/>
    </span>
    <input type="button" onclick="update()" value="注册">
    <p value=""></p>
</form>
<script src="/js/jquery.js"></script>


</body>
</html>
=======
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>register</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/templatemo-style.css">
</head>
<body>
    <div class="container">
        <div class="form row">
            <div class="form-horizontal col-md-offset-3" id="login_form">
                <h3 class="form-title">REGISTER</h3>
                <div class="col-md-9">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="Username" id="username" name="username"/>
                        <span name="username_info" style="color: #FF4136"></span>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password" name="password"/>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Repassword" id="repassword" name="repassword" />
                    </div>
                    <div class="form-group">
                        <i class="glyphicon glyphicon-envelope"></i>
                        <input class="form-control required" type="text" placeholder="Email" id="email" style="width: 400px" name="email"/>
                        <input class="form-control required" type="text" placeholder="verify number" id="emailNum" style="width: 400px" name="emailNum"/>
                        <button class="btn btn-success pull-right" name="getVerifyNum" style="margin: -35px;margin-right: 10px;width: 200px;">
                            获取验证码
                        </button>
                    </div>
                    <%--<div class="form-group">
                        <label class="checkbox">
                            <input type="checkbox" name="remember" value="1"/>同意服务条款
                        </label>
                    </div>--%>
                    <div class="form-group col-md-offset-9">
                        <a href="#"><button type="submit" class="btn btn-success pull-right" name="submit">确认</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="/js/register.js"></script>
</html>

