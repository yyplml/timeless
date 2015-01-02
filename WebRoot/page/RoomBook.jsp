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
							<!-- Start:tab-pane -->
							<div class="tab-pane <c:if test="${vs.index == 0}">active</c:if>" id="tab${vs.count}">
								<div class="row">
									<div class="span5">
										<c:if test="${not empty item.imgs}">
										<div id="heroSlider${vs.count}" class="carousel slide">
											<div class="carousel-inner">
												<c:forEach items="${item.imgs}" var="item2" varStatus="vs2">
													<div class="<c:if test="${vs2.index == 0}">active</c:if> item">
														<div class="hero-unit">
																	<img src="${pageContext.request.contextPath }/images/shop/room/${item2.name}" class="thumbnail">
														</div>
													</div>
												</c:forEach>
											</div>
											<a class="left carousel-control" href="#heroSlider${vs.count}"	data-slide="prev">‹</a> 
											<a class="right carousel-control" href="#heroSlider${vs.count}" data-slide="next">›</a>
										</div>
										</c:if>
									</div>
									<!-- Start:book now -->
									<div class="span5" >
							            <h4 class="widget-header">
							            	<i class="icon-gift"></i>
							            	<spring:message code="page.room.book" />
							            </h4>
							            <div class="widget-body">
											<form method="post" class="form-horizontal">
												<div class="control-group">
													<label class="control-label" for="dateFrom">
														<spring:message code="page.room.dateFrom"/>
													</label>
													<div class="controls">
														<input id="dateFrom${item.id}" class="Wdate" type="text" onClick="WdatePicker()">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label" for="dateTo">
														<spring:message code="page.room.dateTo"/>
													</label>
													<div class="controls">
														<input id="dateTo${item.id}" class="Wdate" type="text" onClick="WdatePicker()">
													</div>
												</div>
												<div class="control-group">
													<div class="controls">
														<a href="javascript:viod(0)" class="btn btn-large" onclick="goOutPage('${item.id}','${item.url}')">
															<spring:message code="page.room.query"/>
														</a>
													</div>
												</div>
												
											</form>
							            </div>
									</div>
									<!-- End:book now -->
								</div>
								<!-- Start:desc -->
								<div class="row">
									<c:if test="${not empty item.detail.shop_notice }">
										<div class="span5">
											<div class="page-header">
												<h4>
													<spring:message code="page.room.mattersNeedingAttention"/>
												</h4>
											</div>
											${item.detail.shop_notice }
										</div>
									</c:if>
									<c:if test="${not empty item.detail.shop_hours }">
										<div class="span5">
											<div class="page-header">
												<h4><spring:message code="page.room.businessHours"/></h4>
											</div>
											${item.detail.shop_hours }
										</div>
									</c:if>
								</div>
								<div class="row">
									<c:if test="${not empty item.detail.shop_facility }">
										<div class="span5">
											<div class="page-header">
												<h4><spring:message code="page.room.facility"/></h4>
											</div>
											${item.detail.shop_facility }
										</div>
									</c:if>
									<c:if test="${not empty item.detail.shop_cancel }">
										<div class="span5">
											<div class="page-header">
												<h4><spring:message code="page.room.cancel"/></h4>
											</div>
											${item.detail.shop_cancel }
										</div>
									</c:if>
								</div>
								<!-- End:desc -->
							</div>
							<!-- End:tab-pane -->
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

<script type="text/javascript">
<!--
	$(function() {
		$("input[id*=dateFrom]").val(new Date().format("yyyy-MM-dd"));
		$("input[id*=dateTo]").val(new Date().tomrrow(1, "yyyy-MM-dd"));
	});
	
	function goOutPage(id,url) {
		url += "dateFrom=" + $("#dateFrom"+id).val() + "&dateTo=" + $("#dateTo"+id).val();
		window.open(url, "_blank")
	}
//-->
</script>
