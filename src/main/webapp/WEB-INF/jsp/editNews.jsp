<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>文本编辑测试</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="${basePath}/tinymce/tinymce.js"></script>
    <script>
        tinymce.init({
            selector: '#textarea',
            theme: 'modern',
            height: 700,
            plugins: [
                'advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker',
                'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
                'save table contextmenu directionality emoticons template paste textcolor codesample fullpage'
            ],
            toolbar: 'fontsizeselect fontselect | insertfile undo redo | styleselect ' +
                '| bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent ' +
                '| link image | print preview media fullpage | forecolor backcolor emoticons | codesample ltr rtl ',
            paste_data_images: true,
            document_base_url: '${basePath}',
            images_upload_url: '${basePath}/pic/save',
            fullpage_default_encoding: "UTF-8"
        });
    </script>

    <script>
        tinymce.init({
            selector: '#textTitle',
            inline: true
        });
    </script>
    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>

    <![endif]-->
</head>
<body>


<h3>文章编辑</h3>

<%--如果news.id不为空，就不是第一次创建新闻,那就更新该新闻--%>
<c:if test="${news.id != null}"><h3 id="newsId">News ID: ${news.id}</h3></c:if>

<div style="font-size: 20pt">
    <label for="textAuthor">作者</label>
    <span id="textAuthor" style="border: 1px solid black">
        <c:choose>
            <c:when test="${news.authorName != null}">
                ${news.authorName}
            </c:when>
            <c:otherwise>
                ${sessionScope.get("username")}
            </c:otherwise>
        </c:choose>
    </span>
</div>


<div class="form-group">
    <label for="newsTypeSelect">新闻类型</label>
    <select class="form-control" id="newsTypeSelect">
        <option value="1" <c:if test="${news.newsTypeId == 1}">selected="selected"</c:if>>学员新闻</option>
        <option value="2" <c:if test="${news.newsTypeId == 2}">selected="selected"</c:if>>培训新闻</option>
        <option value="3" <c:if test="${news.newsTypeId == 3}">selected="selected"</c:if>>技术分享</option>
        <option value="5" <c:if test="${news.newsTypeId == 5}">selected="selected"</c:if>>JAVA</option>
    </select>
</div>

<div style="font-size: 20pt">
    <label for="textTitle">新闻标题</label>
    <p id="textTitle" style="border: 1px solid black">${news.title}</p>
</div>

<form method="post" action="${basePath}/news/content" id="text_form">
    <input name="title" hidden="true">
    <input name="newsTypeId" hidden="true">
    <input name="newsId" hidden="true">
    <textarea id="textarea" name="text">${news.content}</textarea>
</form>
<button type="button" id="btnSave">保存</button>



<!-- Modal 保存成功-->
<div class="modal fade" id="saveModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="saveModalCenterTitle">保存成功</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                文章已保存
            </div>
            <div class="modal-footer">
                <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                <button type="button" class="btn btn-success" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal 提示信息-->
<div class="modal fade" id="warnModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="warnModalCenterTitle">警告</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body" id="warnModalBody">

            </div>
            <div class="modal-footer">
                <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                <button type="button" class="btn btn-danger" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal 保存失败-->
<div class="modal fade" id="failModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="failModalCenterTitle">保存失败</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                保存操作失败！请重试
            </div>
            <div class="modal-footer">
                <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>--%>
                <button type="button" class="btn btn-danger" data-dismiss="modal">确认</button>
            </div>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js" integrity="sha384-FzT3vTVGXqf7wRfy8k4BiyzvbNfeYjK+frTVqZeNDFl8woCbF0CYG6g2fMEFFo/i" crossorigin="anonymous"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="${basePath}/js/service/editNews.js"></script>
</body>
</html>