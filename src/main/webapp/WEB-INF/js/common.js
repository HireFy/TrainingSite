/*检验邮箱*/
function isEmail(mail) {
    var patten = new RegExp(/^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]+$/);
    if (patten.test(mail)) {
        return true
    }else
        return false
}

/*提交指定表单*/
function getUserIndex(form) {
    form.submit()
}

/*检测名字是否重复,并设置name文本框下的消息box的值显示信息*/
function isNameExist(name, name_info_box) {
    $.ajax({
        type: "post",
        url: "/person/name/exist",
        dataType: "json",
        data:{
            "name":name
        },
        error: function (error) {
            console.log(error)
        },
        success: function (data) {
            if (data) {
                /*如果名字存在， submit button attr['disabled',true]*/
                if (name_info_box.val() == "") {
                    name_info_box.text("昵称已存在")
                }
            }else{
                /*名字不存在， submit button attr['disabled',false]*/
                name_info_box.text("")
            }
        }
    })
}