<%--
  Created by IntelliJ IDEA.
  User: 王弋彬
  Date: 2018/11/15
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script type="text/javascript">

    window.onload =  function n(){
        var data = document.getElementById("id").value
        console.log(data)
        x(data)
    }
    function x(id) {
        var data = id
        console.log(data)
        $.ajax({
            type:"get",
            url:"/course/delete/"+data+"",
            dataType:"json",
            contentType:"application/json",
            data:"data",
            error:function (error) {
                console.log(error)
            },
            success:function (data) {
                // window.location.href="/crouse"
                // console.log(data)
                window.location.href="/course/manager/manage"
            }
        });
    }

</script>
<script src="/js/jquery.js"></script>
<head>

    <title>删除</title>

</head>

<body>


<%
    String id =request.getParameter("id");

%>

<%--<h2 class="hh">课程编号：</h2><h2 class="hh" id = "id" ><%=id%></h2>--%>
<h1>删除成功</h1>
<input type="text" value="<%=id%>" id = "id">

</body>
</html>
