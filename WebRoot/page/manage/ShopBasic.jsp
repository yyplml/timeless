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
				<form id="fm" method="post" class="form-horizontal">
					<input type="hidden" name="id" id="id" value="${shop.id}">
					<div class="control-group">
						<label class="control-label" for="name">名称</label>
						<div class="controls">
							<input type="text" id="name" name="name" value="${shop.name}" not-null="true"  maxlength="64">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="num">排序CODE</label>
						<div class="controls">
							<input type="text" id="num" name="num" value="${shop.num }" not-null="true"  maxlength="64">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="url">预定外部链接</label>
						<div class="controls">
							<input type="text" id="url" name="url" value="${shop.url }">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="language">语言</label>
						<div class="controls">
							<select id="language" name="language_id">
								<c:forEach items="${applicationScope.languages }" var="item">
									<option value="${item.id}" <c:if test="${shop.language_id == item.id }">selected="selected"</c:if> >
										${item.name}
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="button" class="btn btn-primary btn-large" value="保存" onclick="save(this)">
						</div>
					</div>
				</form>
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
	function save(obj) {
		$(obj).attr("disabled",true);
		$("#fm").form({
			url:"${pageContext.request.contextPath}/manage/editShop.do",
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
</script>
