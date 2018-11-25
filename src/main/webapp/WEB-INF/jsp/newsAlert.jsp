<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%><html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${info}</h1>
<a href="${basePath}/news/manage">回到新闻管理</a>
</body>
</html>
