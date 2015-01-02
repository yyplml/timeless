<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- Start: HEADER -->
<header>
	<!-- Start: Navigation wrapper -->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a href="" class="brand brand-bootbus">
					<spring:message code="page.common.title"/>
				</a>
				<!-- Below button used for responsive navigation -->
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<c:if test="${not empty sessionScope.user }">
				<ul class="nav pull-right">
					<li>
						<a href="javascript:void(0)">
							<i class="icon-user icon-white"></i> ${user.name}
						</a>
					</li>
					<li>
						<a href="#passwordModel" data-toggle="modal">
							<i class="icon-edit icon-white"></i> 修改密码
						</a>
					</li>
					<li>
						<a href="#loginoutModel" data-toggle="modal">
							<i class="icon-share"></i> 登出
						</a>
					</li>
				</ul>
				</c:if>
			</div>
		</div>
	</div>
	<!-- End: Navigation wrapper -->
</header>
<!-- End: HEADER -->
<!-- Start:Confirm -->
<div id="loginoutModel" class="modal hide fade" role="dialog" aria-labelledby="loginoutModelLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="loginoutModelLabel">登出确认框</h3>
	</div>
	<div class="modal-body">
		<p>你确定要退出系统吗？</p>
	</div>
	<div class="modal-footer">
		<button class="btn btn-danger" onclick="loginout()">确定退出</button>
		<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
	</div>
</div>
<!-- End:Confirm -->

<!-- Start:PasswordDialog -->
<div id="passwordModel" class="modal hide fade" role="dialog" aria-labelledby="passwordModelLabel" aria-hidden="true" data-backdrop="static">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="passwordModelLabel">修改密码</h3>
	</div>
	<div class="modal-body">
		<form id="editPwdfm" method="post" class="form-horizontal">
			<div class="control-group">
				<label class="control-label" for="newPassword">新密码</label>
				<div class="controls">
					<input id="newPassword" name="newPassword" type="password" maxlength="15" desc="新密码">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="newPassword2">第二次输入新密码</label>
				<div class="controls">
					<input id="newPassword2" name="newPassword2" type="password" maxlength="15">
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button class="btn btn-danger" onclick="editPassword(this)">确定</button>
		<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
	</div>
</div>
<!-- End:PasswordDialog -->

<script type="text/javascript">
function loginout() {
	location.href = "${pageContext.request.contextPath}/manage/loginOut.do";
}

function editPassword() {
	var newPwd = $("#newPassword").val();
	var newPwd2 = $("#newPassword2").val();
	if(newPwd != newPwd2) {
		alert("前后两次输入密码不一致，请重新输入！");
		$("#newPassword2").focus();
		return;
	}
	$(this).attr("disabled",true);
	$("#editPwdfm").form({
		url:"${pageContext.request.contextPath}/manage/editPassword.do",
		success:function(res) {
			alert(res.message);
			if(res.code) {
				$('#passwordModel').modal('hide');
				$("#newPassword").val("");
				$("#newPassword2").val("");
			} else {
				$(this).attr("disabled",false);
			}
		}
	});
}
</script>