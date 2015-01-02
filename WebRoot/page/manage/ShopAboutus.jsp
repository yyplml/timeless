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
					<input type="hidden" name="shop_id" id="shop_id" value="${detail.shop_id}">
					<div class="control-group">
						<label class="control-label" for="shop_desc">关于我们</label>
						<div class="controls">
							<textarea id="shop_desc" name="shop_desc" rows="25" style="width:100%;" class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadShopAboutusImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}">${detail.shop_desc}</textarea>
							<textarea id="shop_hours" name="shop_hours" rows="8" style="display:none;width:500px;">${detail.shop_hours}</textarea>
							<textarea id="shop_facility" name="shop_facility" rows="8" style="display:none;width:500px;">${detail.shop_facility}</textarea>
							<textarea id="shop_notice" name="shop_notice" rows="8" style="display:none;width:500px;">${detail.shop_notice}</textarea>
							<textarea id="shop_cancel" name="shop_cancel" rows="8" style="display:none;width:500px;">${detail.shop_cancel}</textarea>
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
			url:"${pageContext.request.contextPath}/manage/editShopDetail.do",
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
