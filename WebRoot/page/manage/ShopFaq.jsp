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
				<%@ include file="common/shopSubMenu.jsp" %>
				<div class="page-header">
					<form action="${pageContext.request.contextPath }/manage/goShopFaq.do" method="post" class="form-search">
						<input type="button" class="btn btn-info btn-large" value="新增" onclick="openAdd()">
						<button type="button" disabled="ture" class="btn">
							所属模块：
						</button>
						<div class="input-append">
							<input name="subMenuIndex" type="hidden" value="Faq"/>
							<input name="menuIndex" type="hidden" value="${menuIndex}"/>
							<input name="id" type="hidden" value="${shop.id}"/>
							<input id="current" name="current" type="hidden" value="1"/>
							<input id="queryContent" name="queryContent" type="text" value="${queryContent}"/>
							<button id="queryBtn" type="submit" class="btn">
								<i class="icon-search"></i>
							</button>
						</div>
					</form>
				</div>
				<table class="table table-striped table-bordered table-hover" style="background-color: white;">
					<thead>
						<tr>
							<td width="20%">
								问题
							</td>
							<td width="60%">
								解答
							</td>
							<td width="20%">
								操作
							</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="vs">
							<tr>
								<td>
									${item.q_content }
								</td>
								<td>
									${item.a_content }
								</td>
								<td>
									<input type="button" class="btn btn-info" value="修改" onclick="openEdit('${item.id}')">
									<input type="button" class="btn btn-danger" value="删除" onclick="del('${item.id}')">
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
			<input type="hidden" id="id" name="id">
			<input type="hidden" id="shop_id" name="shop_id">
			<div class="control-group">
				<label class="control-label" for="q_content">问题</label>
				<div class="controls">
					<textarea id="q_content" name="q_content" rows="6" style="width:80%"></textarea>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="a_content">解答</label>
				<div class="controls">
					<textarea id="a_content" name="a_content" rows="6" style="width:80%"></textarea>
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
	var url = "";
	function toPage(current) {
		$("#current").val(current);
		$("#queryBtn").submit();
	}
	
	function openAdd() {
		url = "addShopFaq.do";
		$("#fm").formClear();
		$("#dialog").modal({show:true});
		$("#dialog-header").html("新增");
		$("#shop_id").val("${shop.id}");
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
		url = "editShopFaq.do";
		$.post(
			"${pageContext.request.contextPath}/manage/queryShopFaq.do",
			{"id":id},
			function(res) {
				if(res.code) {
					$("#fm").formClear();
					var data = res.data;
					$("#id").val(data.id);
					$("#shop_id").val(data.id);
					$("#q_content").val(data.q_content);
					$("#a_content").val(data.a_content);
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
				"${pageContext.request.contextPath}/manage/delShopFaq.do",
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