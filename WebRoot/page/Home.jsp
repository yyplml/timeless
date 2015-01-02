<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:include page="common/top.jsp"></jsp:include>

<jsp:include page="common/head.jsp"></jsp:include>
<!-- 主内容区start -->
<div class="content">
	<!-- Start: slider -->
	<div class="slider">
		<div class="container-fluid">
			<div id="heroSlider" class="carousel slide">
				<div class="carousel-inner">
					<c:forEach items="${sliders}" var="item" varStatus="vs">
						<div class="<c:if test="${vs.index == 0}">active</c:if> item">
							<div class="hero-unit">
								<div class="row-fluid">
									<div class="span12">
										<img src="${pageContext.request.contextPath }/images/slider/${item.image}" class="thumbnail">
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<a class="left carousel-control" href="#heroSlider"	data-slide="prev">‹</a> 
				<a class="right carousel-control" href="#heroSlider" data-slide="next">›</a>
			</div>
		</div>
	</div>
	<!-- End: slider -->
	<div class="container">
		<div class="row">
			<div class="span12">
				<marquee scrollamount="3"  onmouseover="this.stop()" onmouseout="this.start()">
					<span class="label label-important">
						<i class="icon-gift"></i>
						<spring:message code="page.home.sale"/>
					</span>
					&nbsp;
					<c:forEach items="${sales}" var="item" >
						<a target="_blank" href="${pageContext.request.contextPath}/home/goSaleDetail.do?id=${item.id}">
							<span class="label label-important">
								${item.title}
							</span>
						</a>
						&nbsp;
					</c:forEach>
					<span class="label label-info">
						<i class="icon-envelope"></i>
						<spring:message code="page.home.recruit"/>
					</span>
					&nbsp;
					<c:forEach items="${recruits}" var="item" >
						<a target="_blank" href="${pageContext.request.contextPath}/home/goRecruitDetail.do?id=${item.id}">
							<span class="label label-info">
							${item.title}
							</span>
						</a>
						&nbsp;
					</c:forEach>
				</marquee>
			</div>
		</div>
		<div class="row">
			<c:if test="${not empty travels}">
				<c:forEach items="${travels}" var="shop" varStatus="vs">
					<div class="span2 <c:if test="${vs.index == 0}">offset1</c:if> <c:if test="${vs.index != 0}">offset2</c:if>">
						<h3 class="h-center">
							${shop.name}
						</h3>
						<ul class="nav nav-tabs nav-stacked ul-white ul-center">
							<c:forEach items="${shop.travels }" var="item">
								<li>
									<a href="${pageContext.request.contextPath}/home/goTravelDetail.do?id=${item.id}">
										${item.title}
									</a>
								</li>
							</c:forEach>
						</ul>
		          	</div>
				</c:forEach>
			</c:if>
		</div>
	</div>
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
