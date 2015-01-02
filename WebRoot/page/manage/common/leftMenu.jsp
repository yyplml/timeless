<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="span2">
	<ul id="navbar" class="nav nav-tabs nav-stacked ul-white">
		<c:if test="${empty menuIndex}">
			<li class="active">
				<a href="javascript:void(0)" menuIndex="0" >
					<i class="icon-chevron-right"></i>
					概述
				</a>
			</li>
		</c:if>
		<c:if test="${not empty menuIndex}">
			<li>
				<a href="${pageContext.request.contextPath }/manage/goManage.do" menuIndex="0" >
					<i class="icon-chevron-right"></i>
					概述
				</a>
			</li>
		</c:if>
		<c:if test="${not empty sessionScope.user.role}">
			<c:forEach items="${sessionScope.user.role.menus}" var="item">
				<li class="<c:if test="${menuIndex == item.id}">active</c:if>">
					<a href="${pageContext.request.contextPath }/manage/${item.path}?menuIndex=${item.id}" menuIndex="${item.id}" >
						<i class="icon-chevron-right"></i>
						${item.name }
					</a>
				</li>
			</c:forEach>
		</c:if>
	</ul>
</div>
