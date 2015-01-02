<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<ul class="nav nav-tabs">
	<li class="<c:if test="${subMenuIndex == 'Basic'}">active</c:if>">
		<a href="${pageContext.request.contextPath }/manage/goShopBasic.do?id=${shop.id}&menuIndex=${menuIndex }&subMenuIndex=Basic">基本信息</a>
	</li>
	<li class="<c:if test="${subMenuIndex == 'Room'}">active</c:if>">
		<a href="${pageContext.request.contextPath }/manage/goShopRoom.do?id=${shop.id}&menuIndex=${menuIndex }&subMenuIndex=Room">客房预定信息</a>
	</li>
	<li class="<c:if test="${subMenuIndex == 'Traffic'}">active</c:if>">
		<a href="${pageContext.request.contextPath }/manage/goShopTraffic.do?id=${shop.id}&menuIndex=${menuIndex }&subMenuIndex=Traffic">交通信息</a>
	</li>
	<li class="<c:if test="${subMenuIndex == 'Aboutus'}">active</c:if>">
		<a href="${pageContext.request.contextPath }/manage/goShopAboutus.do?id=${shop.id}&menuIndex=${menuIndex }&subMenuIndex=Aboutus">关于我们</a>
	</li>
	<li class="<c:if test="${subMenuIndex == 'Faq'}">active</c:if>">
		<a href="${pageContext.request.contextPath }/manage/goShopFaq.do?id=${shop.id}&menuIndex=${menuIndex }&subMenuIndex=Faq">常见问题</a>
	</li>
	<li class="<c:if test="${subMenuIndex == 'Img'}">active</c:if>">
		<a href="${pageContext.request.contextPath }/manage/goShopImg.do?id=${shop.id}&menuIndex=${menuIndex }&subMenuIndex=Img">滚动图片管理</a>
	</li>
</ul>