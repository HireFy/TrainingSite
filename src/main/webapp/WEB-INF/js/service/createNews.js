/*支持在Markdown里面设置图片的尺寸*/
/*![foo](foo.jpg =100x80)     simple, assumes units are in px
  ![bar](bar.jpg =100x*)      sets the height to "auto"
  ![baz](baz.jpg =80%x5em)  Image with width of 80% and height of 5em*/
showdown.setOption('parseImgDimensions', 'true')
/*开启表情支持*/
showdown.setOption('emoji', 'true')
/*设置github Flavor*/
showdown.setFlavor('github')

showdown.setOption('tasklists', true)


btn = $("input[type='submit']")
textarea = $("#tinymce")
text_form = $("#text_form")
btnSave = $("#btnSave")
newsTypeSelect = $("#newsTypeSelect")
title = $("#textTitle")
warnModalBody = $("#warnModalBody")

btnSave.click(function () {

    if (title.text() == "" || title.text() == null) {
        warnModalBody.text("标题不能为空")
        $("#warnModalCenter").modal("show")
        return
    }

    form_value = text_form.serializeArray();
    var text_value
    $.each(form_value, function (i, field) {
        text_value = field.value
    })

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
});


