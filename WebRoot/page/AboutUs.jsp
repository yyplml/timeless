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
				<c:forEach items="${list}" var="item" varStatus="vs">
					<article class="post-row article">
						<h3>
							<i class=" icon-asterisk"></i> ${item.name}
							<small>- <spring:message code="page.aboutus.powerBy"/></small>
						</h3>
						<c:if test="${not empty item.imgs}">
						<div id="heroSlider${vs.count}" class="carousel slide">
							<div class="carousel-inner">
								<c:forEach items="${item.imgs}" var="item2" varStatus="vs2">
									<div
										class="<c:if test="${vs2.index == 0}">active</c:if> item">
										<div class="hero-unit">
											<img
												src="${pageContext.request.contextPath }/images/shop/aboutus/${item2.name}"
												class="thumbnail">
										</div>
									</div>
								</c:forEach>
							</div>
							<a class="left carousel-control"
								href="#heroSlider${vs.count}" data-slide="prev">‹</a> <a
								class="right carousel-control"
								href="#heroSlider${vs.count}" data-slide="next">›</a>
						</div>
						</c:if>
						${item.detail.shop_desc}
		            </article>
				</c:forEach>
			</div>
			<!-- End:tabs -->
		</div>
	</div>
	<!-- End:container -->
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
