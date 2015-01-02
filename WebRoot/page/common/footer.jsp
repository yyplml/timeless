<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
 <!-- Start: FOOTER -->
<footer>
	<div class="container">
		<div class="row">
			<div class="span2">
				<h4>
					<i class="icon-star icon-white"></i> 
					<spring:message code="page.common.links"/>
				</h4>
				<nav>
					<ul class="quick-links">
						<c:forEach items="${friendLinks1}" var="item">
							<li>
								<a target="_blank" href="${item.url }">${item.name }</a>
							</li>
						</c:forEach>
					</ul>
				</nav>
			</div>
			<div class="span2">
				<h4>
					<i class="icon-star icon-white"></i> 
					<spring:message code="page.common.links"/>
				</h4>
				<nav>
					<ul class="quick-links">
						<c:forEach items="${friendLinks2}" var="item">
							<li>
								<a target="_blank" href="${item.url }">${item.name }</a>
							</li>
						</c:forEach>
					</ul>
				</nav>
			</div>
			<div class="span2">
				<h4>
					<i class="icon-thumbs-up icon-white"></i> 
					<spring:message code="page.common.support"/>
				</h4>
				<nav>
					<ul class="quick-links">
						<li>
							<a target="_blank" href="${pageContext.request.contextPath}/home/goFaq.do">
								<spring:message code="page.common.nav.faq"/>
							</a>
						</li>
						<li>
							<a target="_blank" href="${pageContext.request.contextPath}/home/goRecruit.do">
								<spring:message code="page.common.nav.recruit"/>
							</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="span2">
				<h4>
					<i class="icon-globe icon-white"></i> 
					<spring:message code="page.common.nav.language" />
				</h4>
				<nav>
					<ul class="quick-links">
						<c:forEach items="${applicationScope.languages}" var="item">
							<li>
								<a href="javascript:void(0)" onclick="changeLocal('${item.locale}')">
									<img src="${pageContext.request.contextPath}/images/language/${item.locale}.png">
									${item.name}
								</a>
							</li>
						</c:forEach>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<hr class="footer-divider">
	<div class="container">
		<p class="p-text-center">
			<spring:message code="page.common.tld"/>
		</p>
	</div>
</footer>
<!-- End: FOOTER -->