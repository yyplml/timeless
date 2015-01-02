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
				<form id="fm" method="post" class="form-horizontal">
					<div class="control-group">
						<label class="control-label" for="title">标题</label>
						<div class="controls">
							<input id="title" name="title" type="text" maxlength="64">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="description">内容</label>
						<div class="controls">
							<textarea id="description" name="description" rows="18" style="width:80%" class="xheditor {tools:'Cut,Copy,Paste,Pastetext,|,Blocktag,Fontface,FontSize,Bold,|,Italic,Underline,Strikethrough,FontColor,|,BackColor,SelectAll,Removeformat,Align,|,List,Outdent,Indent,Link,|,Unlink,Anchor,Img,Hr,Table,|,Source,Preview,Fullscreen,About',upImgUrl:'${pageContext.request.contextPath}/manage/xheditor/uploadOtherImg.do',upImgExt:'jpg,jpeg,gif,png',html5Upload:false,clickCancelDialog:false}"></textarea>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="language_id">语言版本</label>
						<div class="controls">
							<select id="language_id" name="language_id">
								<c:forEach items="${applicationScope.languages }" var="item">
									<option value="${item.id}">
										${item.name}
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="button" class="btn btn-primary btn-large" value="保存" onclick="save(this)">
							<input type="button" class="btn btn-success btn-large " value="返回" onclick="back()">
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
		url:"${pageContext.request.contextPath}/manage/addRecruit.do",
		success:function(res) {
			alert(res.message);
			if(res.code) {
				location.href = "${pageContext.request.contextPath}/manage/goRecruitManage.do?menuIndex=${menuIndex}";
			} else {
				$(obj).attr("disabled",false);
			}
		}
	});
}

function back() {
	location.href = "${pageContext.request.contextPath}/manage/goRecruitManage.do?menuIndex=${menuIndex}";
}
	
</script>