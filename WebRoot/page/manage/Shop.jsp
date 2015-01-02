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
								店名
							</td>
							<td>
								排序CODE
							</td>
							<td>
								语言版本
							</td>
							<td>
								状态
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
									${item.name }
								</td>
								<td>
									${item.num }
								</td>
								<td>
									${item.language_name }
								</td>
								<td>
									<c:if test="${item.status == 0}">
										关闭
									</c:if>
									<c:if test="${item.status == 1}">
										开放
									</c:if>
								</td>
								<td>
									<input type="button" class="btn btn-info" value="管理" onclick="openEdit('${item.id}')">
									<c:if test="${item.status == 0}">
										<input type="button" class="btn btn-success" value="开放" onclick="del('${item.id}','1')">
									</c:if>
									<c:if test="${item.status == 1}">
										<input type="button" class="btn btn-danger" value="关闭" onclick="del('${item.id}','0')">
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
			<div class="control-group">
				<label class="control-label" for="name">名称</label>
				<div class="controls">
					<input type="text" id="name" name="name" not-null="true"  maxlength="64">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="num">排序CODE</label>
				<div class="controls">
					<input type="text" id="num" name="num" not-null="true"  maxlength="64">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="url">预定外部链接</label>
				<div class="controls">
					<input type="text" id="url" name="url">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="language">语言</label>
				<div class="controls">
					<select id="language" name="language_id">
						<c:forEach items="${applicationScope.languages }" var="item">
							<option value="${item.id}">
								${item.name}
							</option>
						</c:forEach>
					</select>
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button class="btn btn-primary" onclick="save()">保存</button>
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
		location.href = "${pageContext.request.contextPath}/manage/goShopManage.do?menuIndex=${menuIndex}&current=" + current;
	}
	
	function openAdd() {
		$("#fm").formClear();
		$("#dialog").modal({show:true});
		$("#dialog-header").html("新增");
	}
		
	function save() {
		$(this).attr("disabled",true);
		$("#fm").form({
			url:"${pageContext.request.contextPath}/manage/addShop.do",
			success:function(res) {
				alert(res.message);
				if(res.code) {
					location.reload();
				} else {
					$(this).attr("disabled",false);
				}
			}
		});
	}
	
	function openEdit(id) {
		location.href = "${pageContext.request.contextPath}/manage/goShopBasic.do?subMenuIndex=Basic&menuIndex=${menuIndex}&id=" + id;
	}
	
	function del(id, status) {
		var msg = "";
		if(status == "0") {
			msg = "你确定要关闭该店吗?";
		}
		if(status == "1") {
			msg = "你确定要开放该店吗?";
		}
		if(confirm(msg)) {
			$(this).attr("disabled",true);
			$.post(
				"${pageContext.request.contextPath}/manage/delShop.do",
				{"id":id, "status": status},
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