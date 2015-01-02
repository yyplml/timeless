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
				<form id="fm" method="post" class="form-horizontal" enctype="multipart/form-data">
					<input type="hidden" name="shop_id" id="shop_id" value="${detail.shop_id}">
					<div class="control-group">
						<label class="control-label" for="shop_hours">前台营业时间</label>
						<div class="controls">
							<textarea id="shop_hours" name="shop_hours" rows="20" style="width:100%;" class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadShopRoomImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}">${detail.shop_hours}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="shop_facility">馆内设施</label>
						<div class="controls">
							<textarea id="shop_facility" name="shop_facility" rows="20" style="width:100%;" class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadShopRoomImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}">${detail.shop_facility}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="shop_notice">注意事项</label>
						<div class="controls">
							<textarea id="shop_notice" name="shop_notice" rows="20" style="width:100%;" class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadShopRoomImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}">${detail.shop_notice}</textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="shop_cancel">取消须知 </label>
						<div class="controls">
							<textarea id="shop_cancel" name="shop_cancel" rows="20" style="width:100%;" class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadShopRoomImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}">${detail.shop_cancel}</textarea>
							<textarea id="shop_desc" name="shop_desc"  rows="8" style="display:none;width:500px;">${detail.shop_desc}</textarea>
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
