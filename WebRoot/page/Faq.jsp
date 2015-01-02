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
				<c:forEach items="${list}" var="shop" varStatus="shopVS">
					<c:if test="${not empty shop.faqs }">
						<div class="page-header">
							<h1>${shop.name} <small><spring:message code="page.faq.faq"/></small></h1>
						</div>
						<!-- Start:accordion -->
						<div class="accordion" id="faqAccordion${shopVS.count }">
							<!-- Start:FAQ -->
							<c:forEach items="${shop.faqs }" var="faq" varStatus="faqVS">
								<div class="accordion-group">
									<div class="accordion-heading">
										<h4>
											<a class="accordion-toggle" data-toggle="collapse" data-parent="#faqAccordion${shopVS.count }" href="#faq${shopVS.count}${faqVS.count}">
												<i class="icon-question-sign"></i>
												${faq.q_content }
											</a>
										</h4>
									</div>
									<div id="faq${shopVS.count }${faqVS.count}" class="accordion-body collapse <c:if test="${faqVS.index == 0}">in</c:if>">
										<div class="accordion-inner">
											${faq.a_content}
										</div>
									</div>
								</div>
							</c:forEach>
							<!-- End:FAQ -->
						</div>
					    <!-- End:accordion -->
					</c:if>
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
