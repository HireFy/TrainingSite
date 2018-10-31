/*支持在Markdown里面设置图片的尺寸*/
/*![foo](foo.jpg =100x80)     simple, assumes units are in px
  ![bar](bar.jpg =100x*)      sets the height to "auto"
  ![baz](baz.jpg =80%x5em)  Image with width of 80% and height of 5em*/
showdown.setOption('parseImgDimensions', 'true')
/*开启表情支持*/
showdown.setOption('emoji', 'true')
/*设置github Flavor*/
showdown.setFlavor('github')
var converter = new showdown.Converter();
let text = '# this _is_ `hhhhh`' +
    '图片: ![pic](WEB-INF/images/author-image3.jpg =200x*)'
let html = converter.makeHtml(text);
$("div").append(html);

f()

function f() {
    $("button").click(function () {
        alert($("h1").text())
    })
}