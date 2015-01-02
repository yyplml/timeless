<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="common/top.jsp"></jsp:include>

<jsp:include page="common/head.jsp"></jsp:include>
<style>
	.td-center td{
		line-height: 80px;
		text-align: center;
	}
	.td-center1 td{
		text-align: center;
	}
</style>
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
				<table class="table table-striped table-bordered table-hover text-center" style="background-color: white;">
					<thead>
						<tr class="td-center1">
							<td>
								图片
							</td>
							<td>
								排序CODE
							</td>
							<td>
								操作
							</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="vs">
							<tr class="td-center">
								<td align="center">
									<img src="${pageContext.request.contextPath}/images/slider/${item.image}" class="thumbnail" style="width:300px;height:80px;display: inline;">
								</td>
								<td>
									${item.num}
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
		<form id="fm" method="post" class="form-horizontal" enctype="multipart/form-data">
			<input id="id" name="id" value="" type="hidden">
			<div class="control-group">
				<label class="control-label" for="file">图片</label>
				<div class="controls">
					<input type="file" id="file" name="file" not-null="true" desc="图片">
					<input type="hidden" id="image" name="image" value="">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="num">排序CODE</label>
				<div class="controls">
					<input type="text" id="num" name="num">
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button class="btn btn-primary" id="save" onclick="save(this)">保存</button>
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
		location.href = "${pageContext.request.contextPath}/manage/goSliderManage.do?menuIndex=${menuIndex}&current=" + current;
	}
	
	function openAdd() {
		opr = "add";
		url = "addSlider.do";
		$("#fm").formClear();
		$("#dialog").modal({show:true});
		$("#dialog-header").html("新增");
		$("#file").attr("not-null","true");
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
		url = "editSlider.do";
		$.post(
			"${pageContext.request.contextPath}/manage/querySliderDetail.do",
			{"id":id},
			function(res) {
				if(res.code) {
					$("#fm").formClear();
					var data = res.data;
					$("#id").val(data.id);
					$("#num").val(data.num);
					$("#image").val(data.image);
					$("#dialog").modal({show:true});
					$("#dialog-header").html("修改");
					$("#file").attr("not-null","false");
				}
			},"JSON"
		);
	}
	
	function del(id) {
		if(confirm("你确定要删除该条记录吗?")) {
			$(this).attr("disabled",true);
			$.post(
				"${pageContext.request.contextPath}/manage/delSlider.do",
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