btnModify = $("[name='btn-modify']")
btnComfirmDelete = $("#confirmDelete")
btnDelete = $("#btn-delete")
newsIdInput = $("[name='newsId']")

infoBtnClose = $("#infoBtnClose")

btnModify.click(function () {
    var newsInfoArr = $(this).parent().parent().prevAll()

    var temp = new Array()
    newsInfoArr.each(function () {
        ff = $(this).text()
        temp.push(ff)
    })

    /*找到当前按钮所在id，提交表单*/
    newsIdInput.val(temp[temp.length - 1])
})


$("[name='btn-delete']").click(function () {
    var newsInfoArr = $(this).parent().prevAll()

    var temp = new Array()
    newsInfoArr.each(function () {
        ff = $(this).text()
        temp.push(ff)
    })

    id = temp[temp.length - 1];

    console.log(id)

    btnComfirmDelete.click(function () {
        $.ajax({
            type:"post",
            url:"/news/delete/" + id,
            dataType:"json",
            error:function (error) {
                $("#deleteModalCenter").modal("hide")
                $("#infoModalBody").text("删除失败!请重试")
                $("#infoModalCenter").modal("show")
                $('#infoModalCenter').on('hidden.bs.modal', function (e) {
                    window.location.reload()
                })
            },
            success:function (data) {
                $("#deleteModalCenter").modal("hide")
                $("#infoModalBody").text("删除成功")
                $("#infoModalCenter").modal("show")
                $('#infoModalCenter').on('hidden.bs.modal', function (e) {
                    window.location.reload()
                })
            }
        })
    })

})


