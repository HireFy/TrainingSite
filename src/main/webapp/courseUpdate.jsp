<%--
  Created by IntelliJ IDEA.
  User: 王弋彬
  Date: 2018/11/15
  Time: 22:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>修改课程信息</title>
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


    <%--<script type="text/javascript">--%>
        <%--function update() {--%>
            <%--var id = document.getElementById("courseId").value--%>
            <%--var name = document.getElementById("name").value--%>
            <%--var info = document.getElementById("info").value--%>
            <%--var price = document.getElementById("price").value--%>
            <%--var teacherId = document.getElementById("teacherId").value--%>
            <%--// console.log(id+name+info+price+teacherId)--%>
            <%--if(id !="" && name !="" && info !="" && price !="" && teacherId != "" ){--%>
                <%--$.ajax({--%>
                    <%--type:"post",--%>
                    <%--url:"/course/update",--%>
                    <%--dataType:"json",--%>
                    <%--contentType:"application/json",--%>
                    <%--data:JSON.stringify({--%>
                        <%--"id":id,--%>
                        <%--"name":name,--%>
                        <%--"info":info,--%>
                        <%--"price":price,--%>
                        <%--"teacherId":teacherId--%>
                    <%--}),--%>
                    <%--error:function (error) {--%>
                        <%--console.log(error)--%>
                    <%--},--%>
                    <%--success:function (data) {--%>
                        <%--// window.location.href="/crouse"--%>
                        <%--alert("更新成功")--%>
                        <%--console.log(data)--%>
                        <%--window.location.href="courseManage.jsp"--%>

                    <%--}--%>
                <%--});--%>
            <%--}--%>

            <%--else {--%>
                <%--alert("请输入需要修改的信息")--%>
            <%--}--%>


        <%--}--%>
    <%--</script>--%>

</head>
<body>
<div class="container">
    <div class="form row">
        <div class="form-horizontal col-md-offset-3" id="personPage_right">
            <h3 class="form-title">课程信息修改</h3>
            <%--<form action="/modifyuser" method="post" id="modify_form">--%>
            <%
                String id =request.getParameter("id");

            %>
            <div class="form-group">

                <span>课程编号：<input class="form-control required" type="text"  id="courseId" value="<%=id%>"
                                  name="courseId" autofocus="autofocus" maxlength="20" readonly="ture"></span>
            </div>
            <div class="form-group">
                    <span>课程名称：<u><input class="form-control required" type="text" placeholder="课程名称" id="name"
                                        name="name" autofocus="autofocus" maxlength="20"/></u></span>
                <span name="name_info" style="color: #FF4136"></span>
            </div>
            <div class="form-group">

                <%--<span>课程简介：<input class="form-control required" type="text" placeholder="简介" id="gender"--%>
                                <%--name="gender" autofocus="autofocus" maxlength="200" height="100px"></span>--%>
                <span>课程简介：<textarea class="form-control" rows="6" placeholder="课程简介" name="message" id = "info"></textarea></span>
            </div>
            <div class="form-group">
                    <span>课程价格：<input class="form-control required" type="text" placeholder="价格" id="price" name="price"
                                    autofocus="autofocus" maxlength="20"></span>
            </div>
            <div class="form-group">

                <span>教师ID：<input class="form-control required" type="text" placeholder="教师Id" id="teacherId"
                                  name="gender" autofocus="autofocus" maxlength="20"></span>
            </div>

            <div class="form-group">
                <input name="btn" type="button" class="btn btn-success pull-left" value="确认修改" onclick="update()">
            </div>
        </div>


    </div>
</div>


</body>
<script src="/js/jquery.js"></script>
<script src="/js/service/course_Update.js"></script>

</html>
