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
			<!-- Start:span10 -->
			<div class="span10">
				<%@ include file="common/shopSubMenu.jsp" %>
				<form id="fm" method="post" class="form-horizontal">
					<div class="control-group">
						<label class="control-label" for="shop_desc">交通信息</label>
						<div class="controls">
							<input type="hidden" name="shop_id" id="shop_id" value="${shop.id}">
							<textarea id="desc" name="desc" rows="25" style="width:100%;"  class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadShopTrafficImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}">${traffic.desc}</textarea>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="button" class="btn btn-primary btn-large" value="保存" onclick="save(this)">
						</div>
					</div>	
				</form>
			</div>
			<!-- End:span10 -->
		</div>
	</div>
</div>
<!-- 主内容区end -->
<jsp:include page="common/footer.jsp"></jsp:include>
<jsp:include page="common/bottom.jsp"></jsp:include>
<jsp:include page="common/xhEditor.jsp"></jsp:include>

<script type="text/javascript">
	function save(obj) {
		$(obj).attr("disabled",true);
		$("#fm").form({
			url:"${pageContext.request.contextPath}/manage/editTraffic.do",
			success:function(res) {
				alert(res.message);
				if(res.code) {
					location.reload();
				} else {
					$(obj).attr("disabled",false);
				}
			}
		});
	}
</script>
