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
