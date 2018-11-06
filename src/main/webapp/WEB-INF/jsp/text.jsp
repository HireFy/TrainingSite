<%--
  Created by IntelliJ IDEA.
  User: jw
  Date: 11/6/18
  Time: 1:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>TEXT</title>
</head>
<body>
${sessionScope.get("text")}
</body>
</html>
