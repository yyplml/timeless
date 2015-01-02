<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/spring.tld" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- 引用百度地图API -->
<script type="text/javascript" src="http://api.map.baidu.com/api?ak=RXpGxMqGoqa5SaQVTG3XBSaV&v=2.0&services=true"></script>
<!--百度地图容器-->
<div style="width:100%;height:500px;border:#ccc solid 1px;" id="dituContent"></div>
<script type="text/javascript">
	var mapMarkers = {"dali":{"x":100.170658, "y":25.706721, "level":15}, "lijiang" : {"x":100.248973,"y":26.880192,"level":15}, "yuanyang": {"x":102.806682, "y":23.091545, "level":17}};
    var _mark = mapMarkers["${locale}"];
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        getMarker();//添加标注
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(_mark.x, _mark.y);//定义一个中心点坐标
        map.centerAndZoom(point, _mark.level);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.disableScrollWheelZoom();//禁用地图滚轮放大缩小，默认禁用(可不写)
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
		var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
		map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
		var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
		map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
		var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
		map.addControl(ctrl_sca);
    }
    //创建标注
    function getMarker(){
   		var pt = new BMap.Point(_mark.x, _mark.y);
   		var myIcon = new BMap.Icon("images/marker2.png", new BMap.Size(50,50));
   		var marker = new BMap.Marker(pt, {icon:myIcon});  // 创建标注
   		map.addOverlay(marker);  
   		var opts = {
		  width : 200,     // 信息窗口宽度
		  height: 100,     // 信息窗口高度
		  title : "<h4><spring:message code='page.common.title.long'/><spring:message code='page.common.title.${locale}' /></h4>" , // 信息窗口标题
		  enableMessage: true//设置不允许信息窗发送短息
		}
		var infoWindow = new BMap.InfoWindow("<p><spring:message code='page.${locale}.address'/></p>", opts);  // 创建信息窗口对象 
		marker.addEventListener("click", function(){          
			map.openInfoWindow(infoWindow,pt); //开启信息窗口
		});
    }
    
    initMap();//创建和初始化地图
</script>