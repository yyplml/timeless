<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="common/top.jsp"></jsp:include>
<jsp:include page="common/head.jsp"></jsp:include>
<!-- Start: MAIN CONTENT -->
<div class="content">
	<div class="container">
		<div class="page-header">
			<h1><spring:message code="page.common.title"/> 智能后台管理系统</h1>
		</div>
		<div class="row">
			<div class="span4 offset4" id="errorInfo">
			</div>
		</div>
		<div class="row">
			<div class="span4 offset4">
				<h4 class="widget-header">
					<i class="icon-lock"></i> 
					Signin to Timeless
				</h4>
				<div class="widget-body">
					<div class="center-align">
						<form id="fm" action="${pageContext.request.contextPath}/manage/login.do" method="post" class="form-horizontal form-signin-signup">
							<input id="username" type="text" name="username" placeholder="Username" not-null="true" desc="用户名" maxlength="64"> 
							<input id="password" type="password" name="password" placeholder="Password" not-null="true" desc="密码" maxlength="15">
							<div class="remember-me">
							</div>
							<input type="button" onclick="signin()" value="Sign In" class="btn btn-primary btn-large">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- End: MAIN CONTENT -->
<!-- <jsp:include page="common/footer.jsp"></jsp:include> -->
<jsp:include page="common/bottom.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
	   $(document).keypress(function(e) {  
	       if(e.which == 13) {  
	       		signin();
	       }  
	   }); 
	})
	function signin() {	
		$("#fm").form({
			success:function(result) {
				if(result.code) {
					location.href = "${pageContext.request.contextPath}/manage/goManage.do";
				} else {
					var html = "<div class=\"alert alert-block alert-error fade in\">"
						+ "<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>"
						+ "<h4 class=\"alert-heading\">登录错误</h4>"
						+ "<p id=\"login-error\">"+result.message+"</p>"
						+ "</div>";
					$("#errorInfo").html(html);
				}
			}
		});
	}
</script>