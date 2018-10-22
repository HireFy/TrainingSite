<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
</head>
<body>
<h2>Hello World!</h2>
<a href="/some">发起请求</a>
<img src="images/football-3404535_960_720.jpg">
</body>
</html>
