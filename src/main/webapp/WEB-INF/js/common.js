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
