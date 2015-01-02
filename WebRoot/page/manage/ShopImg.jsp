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
				<%@ include file="common/shopSubMenu.jsp" %>
				<div class="page-header">
					<form class="form-search">
						<input type="button" class="btn btn-info btn-large" value="新增" onclick="openAdd()">
						<button type="button" disabled="true" class="btn">
							所属模块：
						</button>
						<div class="input-append">
							<select id="query_type" name="type">
								<option value="">全部</option>
								<option value="aboutus" <c:if test="${query_type == 'aboutus'}">selected="selected"</c:if>>关于我们</option>
								<option value="room" <c:if test="${query_type == 'room'}">selected="selected"</c:if>>客房预定</option>
							</select>
							<button type="button" onclick="toPage(1);" class="btn">
								<i class="icon-search"></i>
							</button>
						</div>
					</form>
				</div>
				<table class="table table-striped table-bordered table-hover" style="background-color: white;">
					<thead>
						<tr class="td-center1">
							<td>
								图片
							</td>
							<td>
								排序CODE
							</td>
							<td>
								所属模块
							</td>
							<td>
								操作
							</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="vs">
							<tr class="td-center">
								<td>
									<img class="thumbnail" src="${pageContext.request.contextPath}/images/shop/${item.type}/${item.name}" style="width:200px;height:80px;display: inline ;">
								</td>
								<td>
									${item.num }
								</td>
								<td>
									${item.type_name }
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
		<form id="fm" enctype="multipart/form-data" method="post" class="form-horizontal">
			<div class="control-group">
				<label class="control-label" for="img">图片</label>
				<div class="controls">
					<input type="file" id="file" name="file" not-null="true" desc="图片">
					<input type="hidden" id="name" name="name">
					<input type="hidden" id="id" name="id">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="num">排序CODE</label>
				<div class="controls">
					<input type="hidden" id="shop_id" name="shop_id" value="${shop.id}">
					<input type="text" id="num" name="num" not-null="true" desc="排序CODE">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="type">所属模块</label>
				<div class="controls">
					<select id="types" name="type">
						<option value="aboutus">
							关于我们
						</option>
						<option value="room">
							客房预定
						</option>
					</select>
				</div>
			</div>
		</form>
	</div>
	<div class="modal-footer">
		<button id="Save" class="btn btn-primary" onclick="save(this)">保存</button>
		<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
	</div>
</div>
<!-- End:model -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
<script type="text/javascript">
	var url = "";
	function toPage(current) {
		var type = $("#query_type").val();
		location.href = "${pageContext.request.contextPath }/manage/goShopImg.do?id=${shop.id}&menuIndex=${menuIndex}&subMenuIndex=Img&current=" + current + "&type=" + type;
	}
	
	function openAdd() {
		url = "addShopImg.do";
		$("#fm").formClear();
		$("#dialog").modal({show:true});
		$("#dialog-header").html("新增");
		$("#shop_id").val("${shop.id}");
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
		url = "editShopImg.do";
		$.post(
			"${pageContext.request.contextPath}/manage/queryShopImg.do",
			{"id":id},
			function(res) {
				if(res.code) {
					$("#fm").formClear();
					var data = res.data;
					$("#shop_id").val(data.shop_id);
					$("#name").val(data.name);
					$("#id").val(data.id);
					$("#num").val(data.num);
					$("#types").val(data.type);
					$("#file").attr("not-null","false");
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
				"${pageContext.request.contextPath}/manage/delShopImg.do",
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