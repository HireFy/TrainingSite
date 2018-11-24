newsIdH3 = $("#newsId")
btn = $("input[type='submit']")
textarea = $("#tinymce")
text_form = $("#text_form")
btnSave = $("#btnSave")
newsTypeSelect = $("#newsTypeSelect")
title = $("#textTitle")
warnModalBody = $("#warnModalBody")

update = false

if (newsIdH3.text() != null) {
    update = true
}


console.log("newsIDH3: " + newsIdH3.text())


btnSave.click(function () {
    if (title.text() == "" || title.text() == null) {
        warnModalBody.text("标题不能为空")
        $("#warnModalCenter").modal("show")
        return
    }

    /*将表单中的文本内容值拿出来*/
    form_value = text_form.serializeArray();
    var text_value
    $.each(form_value, function (i, field) {
        text_value = field.value
    })

    if(update){
        updateNews(text_value)
    }else
        createNews(text_value)
});


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