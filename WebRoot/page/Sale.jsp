<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="common/top.jsp"></jsp:include>

<jsp:include page="common/head.jsp"></jsp:include>
<c:if test="${empty item}">
	<script type="text/javascript">
		location.href = "${pageContext.request.contextPath}/home/goHome.do";
	</script>
</c:if>
<!-- 主内容区start -->
<div class="content">
	<!-- Start:container -->
	<div class="container">
		<div class="row">
			<div class="span2">
				<%@include file="common/leftPage.jsp" %>
			</div>
			<!-- Start:span10 -->
			<div class="span10">
				<div class="page-header">
					<h1>
						<i class="icon-fire"></i>
						${item.title}
					</h1>
				</div>
				${item.description}
				<a class="btn btn-large btn-success" href="javascript:void(0)">
					<spring:message code="page.recruit.btn.return"/>
				</a>
			</div>
			<!-- End:span10 -->
		</div>
	</div>
	<!-- End:container -->
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
