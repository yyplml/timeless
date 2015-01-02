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
					<form action="${pageContext.request.contextPath }/manage/goTravelManage.do" method="post" class="form-search">
						<input type="button" class="btn btn-info btn-large" value="新增" onclick="openAdd()">
						<button type="button" disabled="true" class="btn">
							所属店铺：
						</button>
						<div class="input-append">
							<select id="queryShopId" name="queryShopId">
								<option value="">
									全部
								</option>
								<c:forEach items="${shops }" var="item">
									<option value="${item.id}" <c:if test="${item.id == queryShopId}">selected="selected"</c:if>>
										${item.name}
									</option>
								</c:forEach>
							</select>
							<button type="button" onclick="toPage(1);" class="btn">
								<i class="icon-search"></i>
							</button>
						</div>
					</form>
				</div>
				<table class="table table-striped table-bordered table-hover" style="background-color: white;">
					<thead>
						<tr>
							<td width="40%">
								标题
							</td>
							<td width="20%">
								所属店铺
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
									${item.title }
								</td>
								<td>
									<c:forEach items="${shops }" var="item2">
										<c:if test="${item2.id == item.shop_id}">${item2.name}</c:if>
									</c:forEach>
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
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
<jsp:include page="common/xhEditor.jsp"></jsp:include>
<script type="text/javascript">
	var url = "";
	function toPage(current) {
		location.href = "${pageContext.request.contextPath}/manage/goTravelManage.do?menuIndex=${menuIndex}&current=" + current + "&queryShopId=" + $("#queryShopId").val();
	}
	
	function openAdd() {
		location.href = "${pageContext.request.contextPath}/manage/goAddTravel.do?menuIndex=${menuIndex}";
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
		location.href = "${pageContext.request.contextPath}/manage/goEditTravel.do?menuIndex=${menuIndex}&id=" + id;
	}
	
	function del(id) {
		if(confirm("你确定要删除该条记录吗?")) {
			$(this).attr("disabled",true);
			$.post(
				"${pageContext.request.contextPath}/manage/delTravel.do",
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