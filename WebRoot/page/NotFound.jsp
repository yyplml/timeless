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
			<div class="span12">
				<img class="thumbnail span12" src="${pageContext.request.contextPath }/images/notFindImg.png">
			</div>
		</div>
	</div>
	<!-- End:container -->
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
