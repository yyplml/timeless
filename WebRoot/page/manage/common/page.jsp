<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class="pagination pagination-centered">
	<c:if test="${not empty page }">
		<ul>
			<c:if test="${page.current == 1}">
				<li class="disabled"><a href="javascript:void(0)">«</a></li>
			</c:if>
			<c:if test="${page.current != 1}">
				<li><a href="javascript:void(0)" onclick="toPage(${page.current - 1})">«</a></li>
			</c:if>
			<c:forEach begin="1" end="${page.pageTotal}" var="item" varStatus="vs">
				<li class="<c:if test="${item == page.current}">active</c:if>" >
					<a href="javascript:void(0)" onclick="toPage(${item})">${item}</a>
				</li>
			</c:forEach>
			<c:if test="${page.current < page.pageTotal}">
				<li>
					<a href="javascript:void(0)" onclick="toPage(${page.current + 1})">»</a>
				</li>
			</c:if>
			<c:if test="${page.current == page.pageTotal}">
				<li class="disabled">
					<a href="javascript:void(0)">
						»
					</a>
				</li>
			</c:if>
		</ul>
	</c:if>
</div>