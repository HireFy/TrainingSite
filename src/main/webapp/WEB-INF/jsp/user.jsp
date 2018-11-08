<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Index</title>
    <%--<link rel="stylesheet" href="/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="../css/bootstrap.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../css/styles.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../css/super_admin.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div>
        <h1>
            hello,${sessionScope.name}
        </h1>
        <div>
            <button id="modification_personal_massage" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#modification_personal_massage_modal" >修改个人信息</button>
            <%--修改个人信息的模态框--TODO:个人信息修改模态框样式完成%>
            <div class="modal fade" id="modification_personal_massage_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 80%;left: 25%">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;
                            </button>
                            <h4 class="modal-title" id="myModalLabel">
                                修改新闻
                            </h4>
                        </div>
                        <div class="modal-body">
                            <%--TODO：关于个人信息的修改，是否要加入一个别人对于该用户的评论，比如老师的--%>
                            <table style="table-layout:fixed" class="table  table-bordered table-hover table-striped">
                                <thead>
                                <tr>
                                    <th>姓名</th>
                                    <th>性别</th>
                                    <th>年龄</th>
                                    <th>发布信息</th>
                                    <th>评论</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                            </button>
                            <button id="" type="button" class="btn btn-primary">
                                确认修改
                            </button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal -->
            </div>

        </div>
        <%--<a href="/modify">修改信息</a>--%>
    </div>
</body>
</html>