<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="common/top.jsp"></jsp:include>

<jsp:include page="common/head.jsp"></jsp:include>
<!-- 主内容区start -->
<div class="content">
	<div class="container">
		<div class="row">
			<%@include file="common/leftMenu.jsp" %>
			<!-- Start:span10 -->
			<div class="span10">
				<div class="page-header">
					<input type="button" class="btn btn-info btn-large" value="新增" onclick="openAdd()">
				</div>
				<table class="table table-striped table-bordered table-hover" style="background-color: white;">
					<thead>
						<tr>
							<td>
								用户名
							</td>
							<td>
								昵称
							</td>
							<td>
								角色
							</td>
							<td>
								操作
							</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="vs">
							<tr>
								<td>
									${item.username }
								</td>
								<td>
									${item.name }
								</td>
								<td>
									${item.role_name}
								</td>
								<td>
									<input type="button" class="btn btn-info" value="修改" onclick="openEdit('${item.id}')">
									<c:if test="${item.id != '1'}">
										<input type="button" class="btn btn-danger" value="删除" onclick="del('${item.id}')">
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- Start:分页 -->
				<%@include file="common/page.jsp" %>
				<!-- End:分页 -->
			</div>
			<!-- End:span10 -->
		</div>
	</div>
</div>
<!-- 主内容区end -->
<!-- Start:model -->
<div id="dialog" class="modal hide fade" role="dialog" aria-labelledby="dialog-header" aria-hidden="true" data-backdrop="static">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="dialog-header">Modal header</h3>
	</div>
	<div class="modal-body">
		<form id="fm" method="post" class="form-horizontal">
			<input id="id" name="id" value="" type="hidden">
			<div class="control-group">
				<label class="control-label" for="username">用户名</label>
				<div class="controls">
					<input type="text" id="username" name="username"  not-null="true" desc="用户名"  maxlength="64">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="newPassword">密码</label>
				<div class="controls">
					<input type="password" id="newPassword" name="newPassword" not-null="true" desc="密码"  maxlength="15">
					<input type="hidden" id="password" name="password">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="name">昵称</label>
				<div class="controls">
					<input type="text" id="name" name="name"  maxlength="64">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="role_id">角色</label>
				<div class="controls">
					<select id="role_id" name="role_id">
						<c:forEach var="item" items="${roles}">
							<option value="${item.id}">${item.name }</option>
						</c:forEach>
					</select>
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button class="btn btn-primary" onclick="save(this)">保存</button>
		<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
	</div>
</div>
<!-- End:model -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
<script type="text/javascript">
	var opr = "";
	var url = "";
	function toPage(current) {
		location.href = "${pageContext.request.contextPath}/manage/goUserManage.do?menuIndex=${menuIndex}&current=" + current;
	}
	
	function openAdd() {
		opr = "add";
		url = "addUser.do";
		$("#fm").formClear();
		$("#dialog").modal({show:true});
		$("#dialog-header").html("新增");
	}
	
	function save(obj) {
		$(obj).attr("disabled",true);
		$("#fm").form({
			url:"${pageContext.request.contextPath}/manage/" + url,
			success:function(res) {
				alert(res.message);
				if(res.code) {
					location.reload();
				} else {
					$(obj).attr("disabled",false);
				}
			}
		});
	}
	
	function openEdit(id) {
		opr = "edit";
		url = "editUser.do";
		$.post(
			"${pageContext.request.contextPath}/manage/queryUserDetail.do",
			{"id":id},
			function(res) {
				if(res.code) {
					$("#fm").formClear();
					var data = res.data;
					$("#id").val(data.id);
					$("#name").val(data.name);
					$("#username").val(data.username);
					$("#password").val(data.password);
					$("#newPassword").val(data.password);
					$("#role_id").val(data.role_id);
					$("#dialog").modal({show:true});
					$("#dialog-header").html("修改");
				}
			},"JSON"
		);
	}
	
	function del(id) {
		if(confirm("你确定要删除该条记录吗?")) {
			$(this).attr("disabled",true);
			$.post(
				"${pageContext.request.contextPath}/manage/delUser.do",
				{"id":id},
				function(res) {
					alert(res.message);
					if(res.code) {
						location.reload();
					} else {
						$(this).attr("disabled",false);
					}
				},"JSON"
			);
		}
	}
</script>