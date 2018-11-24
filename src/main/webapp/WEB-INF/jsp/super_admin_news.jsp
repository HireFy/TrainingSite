<%--
  Created by IntelliJ IDEA.
  User: 杨港港
  Date: 2018/11/7
  Time: 13:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
<html lang="en">
<head>
    <title>Super Administrator</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="../css/bootstrap.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../css/styles.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="../css/super_admin.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../js/super_admin.js"></script>


    <!--<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">-->
    <!--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>-->
    <!--<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
</head>
<body>
<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">管理员</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-user"></i> Vincent Gabriel <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">Profile</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="login.html">Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="active">
                        <a href="#">控制台</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">用户 <b class="caret"></b>

                        </a>
                        <ul class="dropdown-menu" id="menu1">
                            <li>
                                <a href="#">管理<i class="icon-arrow-right"></i>

                                </a>
                                <ul class="dropdown-menu sub-menu">
                                    <li>
                                        <a href="#">Reports</a>
                                    </li>
                                    <li>
                                        <a href="#">Logs</a>
                                    </li>
                                    <li>
                                        <a href="#">Errors</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">SEO Settings</a>
                            </li>
                            <li>
                                <a href="#">Other Link</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">Other Link</a>
                            </li>
                            <li>
                                <a href="#">Other Link</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">管理 <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">Blog</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">News</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Custom Pages</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Calendar</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="#">FAQ</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">其他 <i class="caret"></i>

                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">User List</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Search</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Permissions</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container-fluid ">
    <div class="row-fluid">
        <div class="span3" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse">
                <li>
                    <a href="index.html"><i class="icon-chevron-right"></i> 首&nbsp&nbsp&nbsp&nbsp页</a>
                </li>
                <li class="active">
                    <a href="#"><i class="icon-chevron-right"></i> 新&nbsp;闻&nbsp;管&nbsp;理</a>
                </li>
                <li>
                    <a href="#"><i class="icon-chevron-right"></i> 用&nbsp;户&nbsp;管&nbsp;理</a>
                </li>
                <li>
                    <a href="#"><i class="icon-chevron-right"></i>课&nbsp;程&nbsp;管&nbsp;理</a>
                </li>
                <li>
                    <a href="#"><i class="icon-chevron-right"></i> 咨&nbsp;询&nbsp;管&nbsp;理</a>
                </li>
                <li>
                    <a href="#"><i class="icon-chevron-right"></i> 评&nbsp;论&nbsp;管&nbsp;理</a>
                </li>
                <li>
                    <a href="#"><i class="icon-chevron-right"></i> 相&nbsp;册&nbsp;管&nbsp;理</a>
                </li>
                <li>
                    <a href="#"><i class="icon-chevron-right"></i>公司信息管理</a>
                </li>

            </ul>
        </div>

        <!--/span-->
        <div class="span9" id="content">
            <div class="row-fluid">
                <!--<div class="alert alert-success">-->
                <!--<button type="button" class="close" data-dismiss="alert">&times;</button>-->
                <!--<h4>Success</h4>-->
                <!--The operation completed successfully</div>-->
                <div class="navbar " >
                    <div class="navbar-inner">
                        <ul class="breadcrumb">
                            <i class="icon-chevron-left hide-sidebar"><a href='#' title="Hide Sidebar" rel='tooltip'>&nbsp;</a></i>
                            <i class="icon-chevron-right show-sidebar" style="display:none;"><a href='#' title="Show Sidebar" rel='tooltip'>&nbsp;</a></i>
                            <li>
                                <a href="#">管理</a> <span class="divider">/</span>
                            </li>
                            <li>
                                <a href="#">新闻管理</a> <span class="divider">/</span>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="row-fluid">
                <!-- table -->
                <div class="table ">
                    <table style="table-layout:fixed" class="table  table-bordered table-hover table-striped">
                        <caption><h2>新闻管理</h2></caption>
                        <thead>
                        <tr>
                            <th>新闻id</th>
                            <th>标题</th>
                            <th>内容</th>
                            <th>作者</th>
                            <th>发布时间</th>
                            <th>评论</th>
                            <th>管理</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>001</td>
                            <td>java课程新动向</td>
                            <td class="table_td">xxx培训中心新开了Java课程电风扇犯得上犯得上发射点犯得上方法</td>
                            <td>fjw</td>
                            <td>2018-10-31</td>
                            <td>课程真棒，老师很好</td>
                            <td>
                                <div>
                                    <div style="float: left;"><button id="modification_news" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" >修改</button></div>
                                    <%--<!-- 模态框（Modal） -->TODO:模态框中进行信息管理，直接将数据加载，通过placeholder进行修改动作--%>
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 80%;left: 25%">
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
                                                    <table style="table-layout:fixed" class="table  table-bordered table-hover table-striped">
                                                        <thead>
                                                        <tr>
                                                            <th>新闻id</th>
                                                            <th>标题</th>
                                                            <th>内容</th>
                                                            <th>作者</th>
                                                            <th>发布时间</th>
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
                                                            <td></td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                                                    </button>
                                                    <button id="" type="button" class="btn btn-primary">
                                                        提交更改
                                                    </button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal -->
                                    </div>

                                    <div><button id="news_delete" class="btn btn-primary btn-lg" style="margin-left: 2px" data-toggle="modal" data-target="#myModal">删除</button></div>
                                </div>
                            </td>
                        </tr>

                        </tbody>
                    </table>
                    
                </div>
            </div>

        </div>
    </div>
</div>
<footer>
    <p>我们是xxx培训中心，联系电话：10086</p>
</footer>
</div>

</body>
</html>
