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
                    <form id="register_form" action="/user" method="post">
                    <div class="form-group">
                        <i class="fa fa-user fa-lg"></i>
                        <input class="form-control required" type="text" placeholder="Username" id="username" name="username" autofocus="autofocus"/>
                        <span name="username_info" style="color: #FF4136"></span>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Password" id="password" name="password"/>
                        <span name="pass_info" style="color: #FF4136"></span>
                    </div>
                    <div class="form-group">
                        <i class="fa fa-lock fa-lg"></i>
                        <input class="form-control required" type="password" placeholder="Repassword" id="repassword" name="repassword" />
                        <span name="repass_info" style="color: #FF4136"></span>
                    </div>
                    <div class="form-group">
                        <i class="glyphicon glyphicon-envelope"></i>
                        <input class="form-control required" type="text" placeholder="Email" id="email" style="width: 400px" name="email"/>
                        <span name="email_info" style="color: #FF4136"></span>
                        <input class="form-control required" type="text" placeholder="verify number" id="emailNum" style="width: 400px" name="emailNum"/>
                        <button type="button" class="btn btn-success pull-right" name="getVerifyNum" style="margin: -35px;margin-right: 10px;width: 200px;">
                            获取验证码
                        </button>
                    </div>
                    </form>
                    <div class="form-group col-md-offset-9">
                        <a href="#"><button type="button" class="btn btn-success pull-right" name="submit">确认</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="/js/common.js"></script>
<script src="/js/register.js"></script>
</html>