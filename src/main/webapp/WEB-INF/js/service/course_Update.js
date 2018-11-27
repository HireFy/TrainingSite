
function update() {
    var id = document.getElementById("courseId").value
    var name = document.getElementById("name").value
    var info = document.getElementById("info").value
    var price = document.getElementById("price").value
    var teacherId = document.getElementById("teacherId").value
    // console.log(id+name+info+price+teacherId)
    if(id !="" && name !="" && info !="" && price !="" && teacherId != "" ){
        $.ajax({
            type:"post",
            url:"/course/update",
            dataType:"json",
            contentType:"application/json",
            data:JSON.stringify({
                "id":id,
                "name":name,
                "info":info,
                "price":price,
                "teacherId":teacherId
            }),
            error:function (error) {
                console.log(error)
            },
            success:function (data) {
                // window.location.href="/crouse"
                alert("更新成功")
                console.log(data)
                window.location.href="/course/manager/manage"

            }
        });
    }

    else {
        alert("请输入需要修改的信息")
    }


}
