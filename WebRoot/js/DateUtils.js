//日期格式化方法
Date.prototype.format = function(format){ 
	var o = { 
		"M+" : this.getMonth()+1, //month 
		"d+" : this.getDate(), //day 
		"h+" : this.getHours(), //hour 
		"m+" : this.getMinutes(), //minute 
		"s+" : this.getSeconds(), //second 
		"q+" : Math.floor((this.getMonth()+3)/3), //quarter 
		"S" : this.getMilliseconds() //millisecond 
	} 
	if(/(y+)/.test(format)) { 
		format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
	} 

	for(var k in o) { 
		if(new RegExp("("+ k +")").test(format)) { 
			format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length)); 
		} 
	} 
	return format; 
}

//获取当前日期前N天
Date.prototype.yesterday = function(day,format) {
	var s = this.getTime() - 1000*60*60*24*parseInt(day);
	var newDay = new Date();     
	newDay.setTime(s); 
	return newDay.format(format);
}
//获取当前日期后N天
Date.prototype.tomrrow = function(day,format) {
	var s = this.getTime() + 1000*60*60*24*parseInt(day);
	var newDay = new Date();     
	newDay.setTime(s); 
	return newDay.format(format);
}