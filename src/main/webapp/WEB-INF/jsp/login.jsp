<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">
<head>
    <title>login</title>
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
    <link rel="stylesheet" href="css/style.css">
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/templatemo-style.css">
</head>
<body>
<div class="container">
    <div class="form row">
        <%--TODO 后面index应该考虑跟上用户的昵称/user/{name}--%>
        <div class="form-horizontal col-md-offset-3" id="login_div">
            <h3 class="form-title">LOGIN</h3>
            <div class="col-md-9">
                <form id="login_form" action="/user" method="post">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="email" id="email" name="email"
                               autofocus="autofocus" maxlength="20"/>
                        <span name="email_info" style="color: #FF4136"></span>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password"
                               name="password" maxlength="8"/>
                    </div>
                    <div class="form-group">
                        <a href="/forget">忘记密码</a>
                    </div>
                    <%--<div class="form-group col-md-offset-9">
                        <a href="#"><button type="submit" class="btn btn-success pull-right" name="submit">登录</button></a>
                    </div>--%>
                </form>
                <div class="form-group col-md-offset-9">
                    <a href="#">
                        <button class="btn btn-success pull-right" name="submit">登录</button>
                    </a>
                    <a href="#">
                        <button class="btn btn-success pull-left" name="register">现在注册</button>
                    </a>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
<script src="/js/service/common.js"></script>
<script src="/js/service/login.js"></script>
</html>
