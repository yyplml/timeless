<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="common/top.jsp"></jsp:include>

<jsp:include page="common/head.jsp"></jsp:include>
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
						<spring:message code="page.recruit.title"/>
					</h1>
				</div>
				<table class="table table-striped table-bordered table-hover" style="background-color: white;">
					<thead>
						<tr>
							<td colspan="2">
								<i class="icon-list"></i> <spring:message code="page.recruit.info"/>
							</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="item" varStatus="vs">
							<tr>
								<td>
									<a href="${pageContext.request.contextPath}/home/goRecruitDetail.do?id=${item.id}" target="_blank">
										<i class="icon-chevron-right"></i> ${item.title}
									</a>
								</td>
								<td>
									<small>
										${item.create_time}
									</small>
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
	<!-- End:container -->
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
<script type="text/javascript">
	function toPage(current) {
		location.href = "${pageContext.request.contextPath}/home/goRecruit.do?current=" + current;
	}
</script>
