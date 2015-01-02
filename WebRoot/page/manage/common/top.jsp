<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Timeless</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath }/bootbusiness/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap responsive -->
    <link href="${pageContext.request.contextPath }/bootbusiness/css/bootstrap-responsive.min.css" rel="stylesheet">
    <!-- Font awesome - iconic font with IE7 support --> 
    <link href="${pageContext.request.contextPath }/bootbusiness/css/font-awesome.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/bootbusiness/css/font-awesome-ie7.css" rel="stylesheet">
    <!-- Bootbusiness theme -->
    <link href="${pageContext.request.contextPath }/bootbusiness/css/boot-business.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/bootbusiness/css/MyStyle.css" rel="stylesheet">
<!--     <link href="${pageContext.request.contextPath }/xheditor/xheditor_skin/default/iframe.css" rel="stylesheet"> -->
<!--     <link href="${pageContext.request.contextPath }/xheditor/xheditor_skin/default/ui.css" rel="stylesheet"> -->
    <link rel="shortcut icon" href="favicon.png" />
  </head>
<body>