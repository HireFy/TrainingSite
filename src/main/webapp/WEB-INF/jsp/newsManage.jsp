<%--
  Created by IntelliJ IDEA.
  User: jw
  Date: 11/14/18
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="${basePath}/css/my-custom-bootstrap.css">
    <title>新闻管理</title>
</head>
<body>
<!-- Modal 删除-->
<div class="modal fade" id="deleteModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteModalCenterTitle">确认删除</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                确认要删除该新闻
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">确认</button>
            </div>
        </div>
    </div>
</div>

<%--表格--%>
<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">title</th>
        <th scope="col">author</th>
        <th scope="col">content</th>
        <th scope="col">createTime</th>
        <th scope="col">newsType</th>
        <th scope="col">clickCount</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${newsList}" var="news">
        <tr>
            <td>${news.id}</td>
            <td>${news.title}</td>
            <td>${news.authorId}</td>
            <td>${news.content}</td>
            <td>${news.createTime}</td>
            <td>${news.newsTypeId}</td>
            <td>${news.clickCount}</td>
            <td>
                <button name="btn-modify" type="button" class="btn btn-primary btn-sm" data-toggle="modal"
                        data-target="#ModalCenterModify">更新
                </button>
                <button name="btn-delete" type="button" class="btn btn-danger btn-sm" data-toggle="modal"
                        data-target="#deleteModalCenter">删除
                </button>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<%--分页--%>
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <li class="page-item <c:if test="${crtPage == 1}">disabled</c:if>">
            <a class="page-link" href="/news/${crtPage - 1}" tabindex="-1">Previous</a>
        </li>
        <c:forEach begin="1" step="1" end="${pageCount}" var="pc">
            <li class="page-item"><a class="page-link" href="/news/manage/${pc}">${pc}</a></li>
        </c:forEach>
        <li class="page-item <c:if test="${crtPage == pageCount}">disabled</c:if>">
            <a class="page-link" href="/news/${crtPage + 1}">Next</a>
        </li>
    </ul>
</nav>

</body>
</html>
