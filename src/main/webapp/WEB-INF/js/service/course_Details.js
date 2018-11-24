
window.onload = function z() {

    var data = document.getElementById("id").innerHTML

    $.ajax({
        type:"get",
        url:"/course/"+data+"",
        dataType:"json",
        contentType:"application/json",
        data:"data",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            // window.location.href="/crouse"
            // console.log(data)
            y(data)
        }
    });
}
function y(n) {
    var array = eval(n)
    var e = array.teacherId
    var picId = array.coverPicId
    console.log("图片编号"+picId)
    pic(picId)
    var title = array.name
    var text = array.info
    console.log("教师编号"+e)
    // 获取教师名字
    $.ajax({
        type:"get",
        url:"/person/"+e+"",
        dataType:"json",
        contentType:"application/json",
        data:"data",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {

            // console.log(data)
            var list = eval(data)
            var author = list.name
            d(author)
            console.log("作者"+author)
        }
    })

    document.getElementById("title1").innerHTML = title+"的详细介绍";
    document.getElementById("title").innerHTML = "课程名称:"+title;
    document.getElementById("text").innerHTML =text;




    // document.getElementById("course").innerHTML = "<tr><th>课程名称</th><th>课程简介</th><th>课程价格</th></tr>"+e;
}

function d(n) {
    document.getElementById("author").innerHTML = "任课教师:"+n;

}

function pic(x) {
    var e = x
    // 获取图片地址
    $.ajax({
        type:"get",
        url:"/picture/"+e+"",
        dataType:"json",
        contentType:"application/json",
        data:"data",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {

            // console.log(data)
            var list = eval(data)
            var href = list.href
            picSet(href)
            console.log("图片地址"+href)
        }
    })


}

function picSet(x) {
    document.getElementById("imageId").src = x;

}
