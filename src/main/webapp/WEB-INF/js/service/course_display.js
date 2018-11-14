
window.onload = function x() {
    var data = 1

    $.ajax({
        type:"get",
        url:"/course/page/"+data+"",
        dataType:"json",
        contentType:"application/json",
        data:"data",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            // window.location.href="/crouse"
            console.log(data)
            y(data)
        }
    });

}
// 显示课程
function y(n) {
    var array = eval(n)
    var e = ""


    for (var i=0;i<=array.length;i++) {
        {
            // name = array[i].price
            // $("#id").text(name);
            // document.write("课程名称:" + array[i].name + "<br>" + "课程简介:" + array[i].info + "<br>" + "课程价格：" + array[i].price + "<p>    </p>");
            // e = e + "课程名称:" + array[i].name + "<br>" + "课程简介:" + array[i].info + "<br>" + "课程价格：" + array[i].price + "<p>    </p>";
            e = e + "<tr>"+"<td>"+array[i].name +"</td>"+"<td>"+array[i].info +"</td>"+"<td>"+array[i].price +"</td>"+"</tr>";
        }
        document.getElementById("course").innerHTML = "<tr><th>课程名称</th><th>课程简介</th><th>课程价格</th></tr>"+e;

    }


}
//
// 跳转页面
function page() {
    var data = document.getElementById("pageChoice").value
     document.getElementById("pageNum").value = data
     document.getElementById("pageChoice").value = " "
    $.ajax({
        type:"get",
        url:"/course/page/"+data+"",
        dataType:"json",
        contentType:"application/json",
        data:"data",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            // window.location.href="/crouse"
            console.log(data)

            y(data)



        }
    });

}
// 上一页
function pageMinus() {
    var min = document.getElementById("pageNum").value
    var data = parseInt(min) - 1
    console.log(data)
    if(data > 0) {
        document.getElementById("pageNum").value = data
        document.getElementById("pageChoice").value = " "
        $.ajax({
            type: "get",
            url: "/course/page/" + data + "",
            dataType: "json",
            contentType: "application/json",
            data: "data",
            error: function (error) {
                console.log(error)
            },
            success: function (data) {
                // window.location.href="/crouse"
                console.log(data)
                y(data)
            }
        });

    }

    else {
        alert("已经是第一页了")
    }

}
// 下一页
function pageAdd() {
    var ad = document.getElementById("pageNum").value
    var data = parseInt(ad) + 1
    console.log(data)
    document.getElementById("pageNum").value = data
    document.getElementById("pageChoice").value = " "
    $.ajax({
        type:"get",
        url:"/course/page/"+data+"",
        dataType:"json",
        contentType:"application/json",
        data:"data",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            // window.location.href="/crouse"
            console.log(data)
            y(data)
        }
    });

}

function clean(n) {

     console.log(n)
     document.getElementById("pageNum").value = n
     document.getElementById("pageChoice").value = " "
}
