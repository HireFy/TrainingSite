<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
            +":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>404</title>
    <link rel="stylesheet" href="${basePath}/css/404.css"/>
</head>
<body class="bg-purple">

<div class="stars">
    <div class="custom-navbar">
        <div class="brand-logo">
            <img src="${basePath}/images/logo.svg" width="80px">
        </div>
        <div class="navbar-links">
            <ul>
                <li><a href="#" target="_blank">Home</a></li>
                <li><a href="#" target="_blank">About</a></li>
                <li><a href="#" target="_blank">Features</a></li>
                <li><a href="#" class="btn-request" target="_blank">Request A Demo</a></li>
            </ul>
        </div>
    </div>
    <div class="central-body">
        <img class="image-404" src="${basePath}/images/404.svg" width="300px">
        <a href="/" class="btn-go-home">GO BACK HOME</a>
    </div>
    <div class="objects">
        <img class="object_rocket" src="${basePath}/images/rocket.svg" width="40px">
        <div class="earth-moon">
            <img class="object_earth" src="${basePath}/images/earth.svg" width="100px">
            <img class="object_moon" src="${basePath}/images/moon.svg" width="80px">
        </div>
        <div class="box_astronaut">
            <img class="object_astronaut" src="${basePath}/images/astronaut.svg" width="140px">
        </div>
    </div>
    <div class="glowing_stars">
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>
        <div class="star"></div>

    </div>

</div>

</body>
</html>