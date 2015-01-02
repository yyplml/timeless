<%@page import="com.sthy.util.PropertiesUtils"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- Start: HEADER -->
<header>
	<!-- Start: Navigation wrapper -->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a href="" class="brand brand-bootbus">
					<spring:message code="page.common.title"/>
				</a>
				<!-- Below button used for responsive navigation -->
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<!-- Start: Primary navigation客房预定 交通指南 关于我们 常见问题 BBS 招聘信息 -->
				<div class="nav-collapse collapse">
					<ul class="nav pull-right">
						<li nav="home">
							<a href="${pageContext.request.contextPath}/home/goHome.do">
								<spring:message code="page.common.nav.home"/>
							</a>
						</li>
						<li nav="room">
							<a href="${pageContext.request.contextPath}/home/goRoomBook.do">
								<spring:message code="page.common.nav.room"/>
							</a>
						</li>
						<li nav="traffic">
							<a href="${pageContext.request.contextPath}/home/goTraffic.do">
								<spring:message code="page.common.nav.traffic"/>
							</a>
						</li>
						<li nav="aboutUs">
							<a href="${pageContext.request.contextPath}/home/goAboutUs.do">
								<spring:message code="page.common.nav.aboutus"/>
							</a>
						</li>
						<li nav="faq">
							<a href="${pageContext.request.contextPath}/home/goFaq.do">
								<spring:message code="page.common.nav.faq"/>
							</a>
						</li>
						<li nav="bbs">
							<a href="<%=PropertiesUtils.getValue("bbs.url", "base/bbsconfiguration.properties") %>" target="_blank">
								<spring:message code="page.common.nav.bbs"/>
							</a>
						</li>
						<li nav="recruit">
							<a href="${pageContext.request.contextPath}/home/goRecruit.do">
								<spring:message code="page.common.nav.recruit"/>
							</a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="icon-globe icon-white"></i>
								<spring:message code="page.common.nav.language"/>
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<c:forEach items="${applicationScope.languages}" var="item">
									<li>
										<a href="javascript:void(0)" onclick="changeLocal('${item.locale}')">
											<img src="${pageContext.request.contextPath}/images/language/${item.locale}.png">
											${item.name}
										</a>
									</li>
								</c:forEach>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End: Navigation wrapper -->
</header>
<!-- End: HEADER -->
<script type="text/javascript">
function changeLocal(local) {
	$.post(
		"${pageContext.request.contextPath}/local/changeLocal.do",
		{"local" : local},
		function(res) {
			if(res.code) {
				location.reload();
			} else {
				alert(res.message);
			}
		},"JSON"
	);
}
window.onload = function(){ 
　　var nav = "${requestScope.nav}";
	$("li[nav=" + nav + "]").addClass("active-link");
}; 
</script>