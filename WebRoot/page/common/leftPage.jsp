<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="row">
	<c:if test="${not empty travels}">
		<c:forEach items="${travels}" var="shop">
			<div class="span2">
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