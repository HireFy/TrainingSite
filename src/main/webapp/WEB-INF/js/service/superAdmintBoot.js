btnModify = $("[name='btn-modify']")
btnDelete = $("[name='btn-delete']")
btnSave = $("button[name='save']")
btnClose = $("button[name='close']")

id_box = $("#modifyModalCenterTitle")
name_box = $("#inputName")
age_box = $("#inputAge")
email_box = $("#inputMail")
roleId_select = $("#roleSelect")
pass_box = $("#inputPassword")
repass_box = $("#inputRePassword")
info_box = $("#info")
p_footer_box = $("#p_footer_box")


/*Radio*/
maleDio = $("#gridRadiosMale")
femaleDio = $("#gridRadiosFemale")
secretDio = $("#gridRadiosSecret")

let currentLineBtn;

btnModify.click(function () {
    currentLineBtn = $(this)
    modalValueClean()
    pushValueToModal(currentLineBtn)
})


/*密码框检验*/
function checkPass() {
    passValue = pass_box.val()
    rePassValue = repass_box.val()

    if (passValue != rePassValue) {
        pass_box.addClass("is-invalid");
        repass_box.addClass("is-invalid");
        btnSave.attr("disabled", true)
    } else if (passValue != "") {
        pass_box.removeClass("is-invalid");
        repass_box.removeClass("is-invalid");
        pass_box.addClass("is-valid");
        repass_box.addClass("is-valid");
        btnSave.attr("disabled", false);
    }
    else {
        pass_box.removeClass();
        repass_box.removeClass();
        pass_box.addClass("form-control")
        repass_box.addClass("form-control")
        btnSave.attr("disabled", false);
    }
}

pass_box.blur(function () {
    checkPass()
})
repass_box.blur(function () {
    checkPass()
})


/*邮箱格式检验*/
email_box.blur(function () {
    if (email_box.val() != "") {
        if (isEmail(email_box.val())) {
            email_box.removeClass();
            email_box.addClass("form-control is-valid");
            btnSave.attr("disabled", false)
        } else {
            email_box.removeClass();
            email_box.addClass("form-control is-invalid")
            btnSave.attr("disabled", true)
        }
    } else {
        email_box.removeClass();
        email_box.addClass("form-control");
        btnSave.attr("disabled", false);
    }
})

/*年龄校验*/
age_box.blur(function () {
        if (age_box.val() != "") {
            if (parseInt(age_box.val()) > 200 || parseInt(age_box.val()) < 0 || !isAllNum(age_box.val())) {
                age_box.removeClass();
                age_box.addClass("form-control is-invalid")
                btnSave.attr("disabled", true)
            } else {
                age_box.removeClass();
                age_box.addClass("form-control is-valid")
                btnSave.attr("disabled", false)
            }
        }else{
            age_box.removeClass();
            age_box.addClass("form-control");
            btnSave.attr("disabled", false);
        }
    }
)


btnSave.click(function () {
    gender_val = cleanSpace($(":radio:checked").next().text());
    id_val = id_box.text().slice(4)
    if (gender_val == "保密")
        gender_val = ""

    let data = {
        "id": id_val,
        "name": name_box.val(),
        "age": age_box.val(),
        "gender": gender_val,
        "mail": email_box.val(),
        "roleId": roleId_select.val(),
        "password": pass_box.val(),
        "info": info_box.val()
    }

    $.ajax({
        type: "post",
        url: "/person/update/user",
        dataType: "json",
        contentType: "application/json",
        data: JSON.stringify(data),
        error: function (error) {
            p_footer_box.removeClass()
            p_footer_box.addClass("text-danger")
            p_footer_box.text("修改失败")
            $("#ModalCenterModify").modal("hide")
            $("#failModalCenter").modal("show")
        },
        success: function (data) {
            p_footer_box.removeClass()
            p_footer_box.addClass("text-success")
            p_footer_box.text("修改成功");
            refreshValue(id_val)
            $("#ModalCenterModify").modal("hide")
            $("#successModalCenter").modal("show")
        }
    });
})


/*close按钮点击的时候重设p_footer_box的类属性
* 值为空*/
btnClose.click(function () {
    p_footer_box.removeClass()
    p_footer_box.addClass("visible")
    p_footer_box.text("")
})


/*将表格中的值作为placeholder的值映射到Modal框中*/
function pushValueToModal(btn) {
    var personArr = btn.parent().prevAll()

    var temp = new Array()
    personArr.each(function () {
        ff = $(this).text()
        temp.push(ff)
    })
    roleId_select.val(temp[2])
    if (temp[5] == 'male' || temp[5] == '男') {
        maleDio.prop("checked", true)
    } else if (temp[5] == 'female' || temp[5] == '女') {
        femaleDio.prop("checked", true)
    } else {
        secretDio.prop("checked", true)
    }
    id_box.text("ID: " + temp[8])

    info_box.attr("placeholder", temp[0])
    email_box.attr("placeholder", temp[3])
    age_box.attr("placeholder", temp[6])
    name_box.attr("placeholder", temp[7])

}


/*清除字符串中的空白*/
function cleanSpace(str) {
    return str.replace(/[\s\uFEFF\xA0]+/g, '')
}


/*刷新修改后的值到表格中*/
function refreshValue(id_val) {
    var arr = new Array()
    $.ajax({
        "type": "get",
        "url": "/person/" + id_val,
        dataType: "json",
        success: function (data) {
            currentLineBox = currentLineBtn.parent().prevAll();
            // console.log(currentLineBox)
            // currentLineBox.each(function () {
            //     console.log($(this).text())
            // })
            // console.log("========================")
            // console.log(data)
            for (var p in data) {
                arr.push(data[p])
            }
            arr = arr.reverse()
            // console.log("+++++++++++++++++++++++++")
            for (x in arr) {
                // console.log("arr[" + x + "]: " + arr[x])
                currentLineBox.eq(x).text(arr[x])
            }
        }
    })
}


/*清除Modal中的值*/
function modalValueClean() {
    name_box.val("")
    age_box.val("")
    email_box.val("")
    pass_box.val("")
    repass_box.val("")
    info_box.val("")
    p_footer_box.text("")

    pass_box.removeClass()
    pass_box.addClass("form-control")
    repass_box.removeClass()
    repass_box.addClass("form-control")

    console.log("after valueClean: " + name_box.val())
}




