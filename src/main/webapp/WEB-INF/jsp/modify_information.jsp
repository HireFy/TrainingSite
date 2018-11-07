<%--
  Created by IntelliJ IDEA.
  User: jw
  Date: 10/18/18
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <title>修改个人信息</title>
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
    <%--<link rel="stylesheet" href="css/style.css">--%>
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <script src="js/Update.js"></script>
    <script src="/js/jquery.js"></script>
</head>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="personPage_right">
            <h3 class="form-title">信息修改</h3>

            <div class="form-group">
                <span>用户名id：<u><input class="form-control required" type="text" placeholder="UserID" id="userid" name="userid" autofocus="autofocus" maxlength="20" /></u></span>
            </div>
            <div class="form-group">
                <span>用户名：<u><input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus" maxlength="20" /></u></span>
            </div>
            <div class="form-group">
                <span>性别：<input class="form-control required" type="text" placeholder="Gender" id="gender" name="gender" autofocus="autofocus" maxlength="20" ></span>
            </div>
            <div class="form-group">
                <span>年龄：<input class="form-control required" type="text" placeholder="Age" id="age" name="age" autofocus="autofocus" maxlength="20" ></span>
            </div>
            <div class="form-group">
                <span>密码：<input class="form-control required" type="password" placeholder="Password" id="password" name="password" autofocus="autofocus" maxlength="20" ></span>
            </div>
            <div class="form-group">
                <span>邮箱：
                    <input class="form-control required" type="text" placeholder="Email" id="email" style="width: 400px" name="email" maxlength="25"/>
                </span>
                <span>请输入验证码：
                    <input class="form-control required" type="text" placeholder="Verification_code" id="ver_code" style="width: 200px" name="email" maxlength="8"/>
                </span>
                <button type="submit" class="btn btn-success pull-right" name="submit" style="margin: -35px;margin-right: 10px;width: 200px; float: left">
                    获取验证码
                </button>

            </div>
            <div class="form-group">

                <input type="button" class="btn btn-success pull-left" onclick="update()" value="确认修改">

            </div>
        </div>



    </div>
</div>
</body>
</html>