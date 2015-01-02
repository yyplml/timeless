<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="common/head.jsp"></jsp:include>

<body> 
<div class="easyui-panel" title="系统信息" style="padding:10px;width:100%;" data-options="iconCls:'icon-sum'">
	<ul>
       <li>★.版本号：Version 1.0</li>
       <li>★.JDK 版本：JDK 6以及以上版本</li>
       <li>★.服务器：Tomcat 6以及以上版本</li>
       <li>★.数据库：Mysql 5.5以及以上版本</li>
       <li>★.操作系统：Windows、Linux</li>
   </ul>
</div>
<br>
<div class="easyui-panel" title="使用帮助" style="padding:10px;width:100%;" data-options="iconCls:'icon-help'">
   <p style="font-size:20px">Timeless Hostel 后台管理系统帮助您轻松构建自己的网站.</p>
   <br>
   <ul>
      <li>
      	☆.如果要修改地图标注，请使用<a href="javascript:clickParentBtn('map')">【地图标注管理】</a>
      </li>
      <li>
      	☆.如果要增加或者修改语言、修改展示信息，请查看<a href="javascript:clickParentBtn('language')">【多国语言帮助】</a>
      </li>
      <li>
      	☆.如果要更换展示图片，请查看<a href="javascript:clickParentBtn('images')">【图片更换帮助】</a>
      </li>
   </ul>
</div>
</body>
<jsp:include page="common/footer.jsp"></jsp:include>
<script type="text/javascript">
<!--
	function clickParentBtn(ref) {
		$("ul[class=leftMenu] li a[ref="+ref+"]", parent.document).click();
	}
//-->
</script>
