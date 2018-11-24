// btn = $("input[type='submit']")
// textarea = $("#tinymce")
// text_form = $("#text_form")
// btnSave = $("#btnSave")
// newsTypeSelect = $("#newsTypeSelect")
// title = $("#textTitle")
// warnModalBody = $("#warnModalBody")
//
// btnSave.click(function () {
//
//     if (title.text() == "" || title.text() == null) {
//         warnModalBody.text("标题不能为空")
//         $("#warnModalCenter").modal("show")
//         return
//     }
//
//     form_value = text_form.serializeArray();
//     var text_value
//     $.each(form_value, function (i, field) {
//         text_value = field.value
//     })
//
//     console.log(text_value)
//
//     $.ajax({
//         type: "post",
//         url: "/news/save",
//         contentType: "application/json",
//         data: JSON.stringify({
//             "title": title.text(),
//             "content": text_value,
//             "newsTypeId": newsTypeSelect.val(),
//         }),
//         dataType: "json",
//         error: function (error) {
//             console.log(error)
//             $("#failModalCenter").modal("show")
//         },
//         success: function (data) {
//             $("#saveModalCenter").modal("show")
//         }
//     })
// });
//
//
