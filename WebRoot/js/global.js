//如果img控件的图片不存在时，替换为我们的默认图片
$(function() {
	$("img").bind("error",function() {
		$(this).attr("src","images/notFind.png");
		$(this).bind("error", null);
	});
})