/*支持在Markdown里面设置图片的尺寸*/
/*![foo](foo.jpg =100x80)     simple, assumes units are in px
  ![bar](bar.jpg =100x*)      sets the height to "auto"
  ![baz](baz.jpg =80%x5em)  Image with width of 80% and height of 5em*/
showdown.setOption('parseImgDimensions', 'true')
/*开启表情支持*/
showdown.setOption('emoji', 'true')
/*设置github Flavor*/
showdown.setFlavor('github')

showdown.setOption('tasklists', true)


btn = $("input[type='submit']")
textarea = $("textarea")
text_form = $("#text_form")

btn.click(function () {
    var converter = new showdown.Converter();
    let text = textarea.val()
    let html = converter.makeHtml(text);

    $.ajax({
        type:"post",
        url:"/edit",
        data:{
            "text":html
        },
        dataType:"json",
        error:function (error) {
            console.log(error)
        },
        success:function (data) {
            if(data)
                window.location.href = "/news/showdown/text"
        }
    })
})

