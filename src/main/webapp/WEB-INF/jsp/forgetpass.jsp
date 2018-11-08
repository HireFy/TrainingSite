<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
        <div class="form-horizontal col-md-offset-3" id="verify_mail_form">
            <%--TODO 显示一个忘记密码整个操作的进度条在页面上--%>
            <h3 class="form-title">验证邮箱</h3>
            <div class="col-md-9">
                <div class="form-group">
                    <i class="fa fa-user fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="Email" id="email" name="email"
                           autofocus="autofocus"/>
                    <span id="email_info" style="color:#FF4136;"></span>
                </div>
                <div class="form-group">
                    <i class="fa fa-lock fa-lg"></i>
                    <input class="form-control required" type="text" placeholder="number" id="num" name="num"/>
                    <span id="num_info" style="color:#FF4136;"></span>
                </div>
                <div class="form-group col-md-offset-9">
                    <a href="#">
                        <button type="button" class="btn btn-success pull-right" name="submit">确认</button>
                        <button type="button" class="btn btn-success pull-left" name="getVerifyNum">
                            获取验证码
                        </button>
                    </a>

                </div>
                <a href="/register">现在注册</a>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/js/jquery.js"></script>
<script src="/js/service/common.js"></script>
<script src="/js/service/forget_pass.js"></script>
</html>
