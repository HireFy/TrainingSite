
function add() {
    var name = document.getElementById("name").value
    var info = document.getElementById("info").value
    var price = document.getElementById("price").value
    var teacherId = document.getElementById("teacherId").value
    var courseTypeId = document.getElementById("courseTypeId").value
    var coverId = document.getElementById("coverId").value

    // console.log(id+name+info+price+teacherId)
    if(name !="" && info !="" && price !="" && teacherId != ""&& courseTypeId != "" && coverId != "" ){
        $.ajax({
            type:"post",
            url:"/course/create",
            dataType:"json",
            contentType:"application/json",
            data:JSON.stringify({
                "name":name,
                "courseTypeId":courseTypeId,
                "coverPicId":coverId,
                "info":info,
                "price":price,
                "teacherId":teacherId
            }),
            error:function (error) {
                console.log(error)
            },
            success:function (data) {
                // window.location.href="/crouse"
                alert("添加成功")
                console.log(data)
                window.location.href="courseManage.jsp"

            }
        });
    }

    else {
        alert("请输入需要添加的信息")
    }


}