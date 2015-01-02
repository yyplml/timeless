<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<footer>
	<div class="container">
		<div class="row">
			<div class="span2">
				<h4>
					<i class="icon-thumbs-up icon-white"></i> 
					在线支持 
				</h4>
				<nav>
					<ul class="quick-links">
						<li>
							<a target="_blank" href="${pageContext.request.contextPath}/page/manage/IconList.jsp">
								常用图标代码
							</a>
						</li>
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
