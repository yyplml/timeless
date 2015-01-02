function checkForm() {
	var isCheck = true;
	$("input[not-null=true]").each(function(i) {
		var value = $(this).val();
		if(value == null || value == '') {
			isCheck = false;
			alert($(this).attr("desc") + "为必填项!");
			$(this).focus();
			return false;
		}
	});
	return isCheck;
}