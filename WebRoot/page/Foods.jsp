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
<div id="main">
     <div class="container">
     	<div class="hgroup">
        	<h1>
        		<spring:message code="page.common.food"/>
        	</h1>
        </div>
     	<div id="portfolio_container" class="portfolio_strict row">
               <div class="portfolio_item span4">
                    <div class="portfolio_photo" style="background-image:url(${pageContext.request.contextPath}/images/${locale}/food/1.jpg)"> 
                    	<a href="javascript:void(0)"> 
                    		<i class="icon-2x icon-external-link"></i>
                        </a> 
                    </div>
                    <div class="portfolio_description">
                         <h3>
                         	<a href="${pageContext.request.contextPath}/home/goFoods.do?locale=${locale}">
                         		<spring:message code="page.${locale }.food.one"/>
                         	</a>
                         </h3>
                    </div>
               </div>
               <div class="portfolio_item span4">
                    <div class="portfolio_photo" style="background-image:url(${pageContext.request.contextPath}/images/${locale}/food/2.jpg)"> 
                    	<a href="javascript:void(0)"> 
                    		<i class="icon-2x icon-external-link"></i>
                        </a> 
                    </div>
                    <div class="portfolio_description">
                         <h3>
                         	<a href="${pageContext.request.contextPath}/home/goFoods.do?locale=${locale}">
                         		<spring:message code="page.${locale }.food.two"/>
                         	</a>
                         </h3>
                    </div>
               </div>
               <div class="portfolio_item span4">
                    <div class="portfolio_photo" style="background-image:url(${pageContext.request.contextPath}/images/${locale}/food/3.jpg)"> 
                    	<a href="javascript:void(0)"> 
                    		<i class="icon-2x icon-external-link"></i>
                        </a> 
                    </div>
                    <div class="portfolio_description">
                         <h3>
                         	<a href="${pageContext.request.contextPath}/home/goFoods.do?locale=${locale}">
                         		<spring:message code="page.${locale }.food.three"/>
                         	</a>
                         </h3>
                    </div>
               </div>
               <div class="portfolio_item span4">
                    <div class="portfolio_photo" style="background-image:url(${pageContext.request.contextPath}/images/${locale}/food/4.jpg)"> 
                    	<a href="javascript:void(0)"> 
                    		<i class="icon-2x icon-external-link"></i>
                        </a> 
                    </div>
                    <div class="portfolio_description">
                         <h3>
                         	<a href="${pageContext.request.contextPath}/home/goFoods.do?locale=${locale}">
                         		<spring:message code="page.${locale }.food.four"/>
                         	</a>
                         </h3>
                    </div>
               </div>
               <div class="portfolio_item span4">
                    <div class="portfolio_photo" style="background-image:url(${pageContext.request.contextPath}/images/${locale}/food/5.jpg)"> 
                    	<a href="javascript:void(0)"> 
                    		<i class="icon-2x icon-external-link"></i>
                        </a> 
                    </div>
                    <div class="portfolio_description">
                         <h3>
                         	<a href="${pageContext.request.contextPath}/home/goFoods.do?locale=${locale}">
                         		<spring:message code="page.${locale }.food.five"/>
                         	</a>
                         </h3>
                    </div>
               </div>
               <div class="portfolio_item span4">
                    <div class="portfolio_photo" style="background-image:url(${pageContext.request.contextPath}/images/${locale}/food/6.jpg)"> 
                    	<a href="javascript:void(0)"> 
                    		<i class="icon-2x icon-external-link"></i>
                        </a> 
                    </div>
                    <div class="portfolio_description">
                         <h3>
                         	<a href="${pageContext.request.contextPath}/home/goFoods.do?locale=${locale}">
                         		<spring:message code="page.${locale }.food.six"/>
                         	</a>
                         </h3>
                    </div>
               </div>
         </div>
     </div>
     <jsp:include page="common/footer.jsp"></jsp:include>
</div>
<!-- 主内容区end -->
<jsp:include page="common/bottom.jsp"></jsp:include>
<script type="text/javascript">
	$(function() {
		$("body").removeClass("collapsing_header");
	})
</script>
