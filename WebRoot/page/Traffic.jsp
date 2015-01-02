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
			<!-- Start:tabs -->
			<div class="span10">
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<c:forEach items="${list}" var="item" varStatus="vs">
							<li <c:if test="${vs.index == 0}">class="active"</c:if>>
								<a href="#tab${vs.count}" data-toggle="tab">${item.name}</a>
							</li>
						</c:forEach>
					</ul>
					<div class="tab-content">
						<c:forEach items="${list}" var="item" varStatus="vs">
							<div class="tab-pane <c:if test="${vs.index == 0}">active</c:if>" id="tab${vs.count}">
								<div class="row">
									<div class="span10">
										${item.desc}
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- End:tabs -->
		</div>
	</div>
	<!-- End:container -->
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
