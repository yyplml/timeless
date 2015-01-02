<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<jsp:include page="common/top.jsp"></jsp:include>

<jsp:include page="common/head.jsp"></jsp:include>
<!-- 主内容区start -->
<div class="content">
	<div class="container">
		<div class="row">
			<%@include file="common/leftMenu.jsp" %>
			<div class="span10">
				<div class="page-header">
					<h1>
						欢迎使用<small>智能管理平台 Power By ShaTingHaiYu</small>
					</h1>
				</div>
				<div class="row">
					<div class="span10 center-align">
						<img src="${pageContext.request.contextPath }/images/manage/welcome.jpg" class="thumbnail product-snap">
					</div>
				</div>
				<div class="row">
					<div class="span10">
						<h3><i class="icon-glass"></i> 如果你已经熟悉系统，请直接点击左侧菜单进行系统管理！</h3>
						<h3><i class="icon-globe"></i> 增加语言版本</h3>
						<ul class="features">
							<li><i class="icon-check"></i>在【语言管理】中新增一种语言</li>
							<li><i class="icon-check"></i>在【店铺管理】中新增加店铺来对应该语言，然后填充对应的店铺信息</li>
							<li><i class="icon-check"></i>在【招聘管理】中增加对应语言的招聘信息</li>
							<li><i class="icon-check"></i>在【优惠管理】中增加对应语言的优惠信息</li>
							<li><i class="icon-check"></i>在【旅游管理】中增加对应语言的旅游信息</li>
						</ul>
						<h3><i class="icon-facetime-video"></i> 首页的图片滚动管理</h3>
						<ul class="features">
							<li><i class="icon-check"></i>在【首页轮播管理】中对首页上滚动的图片进行 新增、修改、删除管理 </li>
							<li>
								<i class="icon-exclamation-sign"></i>
								温馨提示：首页滚动图片的分辨率最好一致，最佳分辨率为1024*350、950*350、1200*350、1280*350、1024*400、950*400、1200*400、 1280*400，长尽量不要超过1300，宽尽量不要超过400。
							</li>
						</ul>
						<h3><i class="icon-home"></i> 店铺管理</h3>
						<ul class="features">
							<li><i class="icon-check"></i>在【店铺管理】可以对店铺进行 新增、修改、删除管理</li>
							<li><i class="icon-check"></i>在【店铺管理】中可以更改 店铺基本信息以及客房预定、交通信息、关于我们、常见问题等模块的文字信息和图片滚动信息</li>
							<li>
								<i class="icon-exclamation-sign"></i>
								温馨提示：每个语言版本都对应有自己的店，比如现在有中、英2种语言，2种语言下各自有三家店，请分别对这些店的信息进行管理。
							</li>
						</ul>
						<h3><i class="icon-user"></i> 招聘信息管理</h3>
						<ul class="features">
							<li><i class="icon-check"></i>管理员通过【招聘信息管理】对招聘信息进行发布、修改、删除等管理</li>
						</ul>
						<h3><i class="icon-gift"></i> 优惠信息管理</h3>
						<ul class="features">
							<li><i class="icon-check"></i>管理员通过【优惠信息管理】对优惠信息进行发布、修改、删除等管理</li>
						</ul>
						<h3><i class="icon-plane"></i> 旅游信息管理</h3>
						<ul class="features">
							<li><i class="icon-check"></i>主要是对旅游信息的发布、修改、删除</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
