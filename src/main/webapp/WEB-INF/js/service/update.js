name_input = $("#username")
name_info = $("span[name='name_info']")
age_input = $("#age")
gender_input = $("#gender")

modify_form = $("#modify_form")
btn = $("[name='btn']")


btn.click(function () {
    checkName()
    /*检车是否所有文本框都是空值*/
    if (name_input.val() == "" && age_input.val() == "" && gender_input.val() == "") {
        alert("无效的提交")
        return
    }
    if (name_info.text() != "") {
        return;
    }
    $.ajax({
        type:"post",
        url:"/person/update",
        dataType:"json",
        contentType:"application/json",
        data:JSON.stringify({
            "name":name_input.val(),
            "age":age_input.val(),
            "gender":gender_input.val()
        }),
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            window.location.href="/user"
        }
    });
})


/*检测名字是否重复*/
function checkName(){
    name_input.blur(function () {
        if (name_input.val() != "") {
            isNameExist(name_input.val(), name_info)
            return
        }
        name_info.text("")
    })
}

