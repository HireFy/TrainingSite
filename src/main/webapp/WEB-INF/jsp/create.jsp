<%--
  Created by IntelliJ IDEA.
  User: 王弋彬
  Date: 2018/11/2
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>创建用户</title>
    <script src="/js/jquery.js"></script>
    <script src="/js/personCreate.js"></script>
</head>
<%--var username = $("#username").val();--%>
<%--var age = $("#age").val();--%>
<%--var gender = $("#gender").val();--%>
<%--var password = $("#password").val();--%>
<%--var role = $("#role").val();--%>
<%--var mail = $("#mail").val();--%>
<%--var info= $("#info").val();--%>
<body>
<form>

<input type="text" id="username" placeholder="请输入用户名">
    <br>
    <input type="text" id="age" placeholder="请输入年龄">
    <br>
    <h3>选择性别：</h3>
    <select id="gender">
        <option value="男">男</option>
        <option value="女">女</option>
    </select>


<input type="password" id="password" placeholder="输入密码">
<br>
    <br>
    <h3>选择用户级别：</h3>
    <select id="role">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
    </select>
    <br>
    <input type="email" id="mail" placeholder="请输入邮箱">
<input type="text" id="info" placeholder="请输入备注">
<br>
<input type="button" onclick="create()" value="注册">
<p value=""></p>
</form>
</body>
</html>
