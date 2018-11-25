newsIdH3 = $("#newsId")
btn = $("input[type='submit']")
textarea = $("#tinymce")
text_form_jquery = $("#text_form")
btnSave = $("#btnSave")
newsTypeSelect = $("#newsTypeSelect")
title = $("#textTitle")
warnModalBody = $("#warnModalBody")

update = false
var newsId
if (newsIdH3.text() != "") {
    update = true
    newsId = newsIdH3.text().slice(9)
}

console.log("newsId: " + newsId)
console.log("update:" + update)


btnSave.click(function () {
    if (title.text() == "" || title.text() == null) {
        warnModalBody.text("标题不能为空")
        $("#warnModalCenter").modal("show")
        return
    }

    text_form.title.value = title.text()
    text_form.newsTypeId.value = newsTypeSelect.val()

    /*如果更新，重新设置form提交的路径及添加新的参数*/
    if(update){
        text_form.newsId.value = newsId
        text_form.action = '/news/update'
    }

    text_form.submit()

})


function submitForm() {
    var url_fix
    if(update){
        url_fix = "update"
    }else
        url_fix = "content"

    $.ajax({
        type:"post",
        url:"/news/"+url_fix,
        dataType:"json",
        data:$("#text_form").serialize(),
        error:function(){
            $("#failModalCenter").modal("show")
        },
        success:function () {
            $("#saveModalCenter").modal("show")
        }
    })
}


// btnSave.click(function () {
//     if (title.text() == "" || title.text() == null) {
//         warnModalBody.text("标题不能为空")
//         $("#warnModalCenter").modal("show")
//         return
//     }
//
//     /*将表单中的文本内容值拿出来*/
//     form_value = text_form.serializeArray();
//
//     console.log(form_value)
//
//     var text_value
//     $.each(form_value, function (i, field) {
//         text_value = field.value
//     })
//
//     console.log("表单中的文本: " + text_value)
//
//     if(update){
//         updateNews(text_value)
//     }else
//         createNews(text_value)
// });


function createNews(text_value) {
    /*发送到后台保存*/
    $.ajax({
        type: "post",
        url: "/news/save",
        contentType: "application/json",
        data: JSON.stringify({
            "title": title.text(),
            "content": text_value,
            "newsTypeId": newsTypeSelect.val(),
        }),
        dataType: "json",
        error: function (error) {
            console.log(error)
            $("#failModalCenter").modal("show")
        },
        success: function (data) {
            $("#saveModalCenter").modal("show")
        }
    })
}

function updateNews(text_value) {
    $.ajax({
        "type":"post",
        "url":"/news/update",
        contentType:"application/json",
        data:JSON.stringify({
            "id":newsIdH3.text().slice(9),
            "title":title.text(),
            "content":text_value,
            "newsTypeId": newsTypeSelect.val()
        }),
        dataType:"json",
        error: function (error) {
            console.log(error)
            $("#failModalCenter").modal("show")
        },
        success: function (data) {
            $("#saveModalCenter").modal("show")
        }
    })
}