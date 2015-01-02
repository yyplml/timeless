<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>Timeless Hostel,久居丽江,久居大理,久居元阳</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords"
	content="久居,久居丽江,久居大理,久居元阳,大理,丽江,元阳,Timeless,timeless,hostel,酒店,客栈">
<meta http-equiv="description"
	content="Timeless Hostel 久居丽江  久居大理  久居元阳">
<!-- Bootstrap -->
<link
	href="${pageContext.request.contextPath }/bootbusiness/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Bootstrap responsive -->
<link
	href="${pageContext.request.contextPath }/bootbusiness/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<!-- Font awesome - iconic font with IE7 support -->
<link
	href="${pageContext.request.contextPath }/bootbusiness/css/font-awesome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/bootbusiness/css/font-awesome-ie7.css"
	rel="stylesheet">
<!-- Bootbusiness theme -->
<link
	href="${pageContext.request.contextPath }/bootbusiness/css/boot-business.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/bootbusiness/css/MyStyle.css"
	rel="stylesheet">
<link rel="shortcut icon" href="favicon.png" />
<style type="text/css">
.main {
    width: 999px;
    height: 590px;
    margin-left: auto;
    margin-right: auto;
}
</style>
<style type="text/css">
#navigation {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	font-size: .85em;
	z-index: 9998;
}
</style>
</head>
<body style="background-color: #110012;padding: 0;" >
	<div id="navigation" onclick="goPage()">  
	</div>  
	<div class="main">
		<embed height="500px" width="999px" onclick="goPage()"
			wmode="transparent" allowscriptaccess="always" quality="high"
			name="40082897" id="40082897" style="" src="swf/index.swf"
			type="application/x-shockwave-flash" >
		</embed>
	</div>
</body>
</html>
<<script type="text/javascript">
<!--
	function goPage() {
		location.href = "${pageContext.request.contextPath}/home/goHome.do";
	}
//-->
</script>
