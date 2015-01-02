package com.sthy.util;

/**
 * 常量定义类
 * 
 * @author Administrator
 * 
 */
public interface CONST {

	/**
	 * 基本常量
	 * 
	 * @author Administrator
	 * 
	 */
	interface BASE {

		String ROOT_PATH = System.getProperty("catalina.base")
				+ "/webapps/timeless/";

		String ABOUTUS_PATH = ROOT_PATH + "images/shop/aboutus/";
		
		String ROOM_PATH = ROOT_PATH + "images/shop/room/";
		
		String TRAFFIC_PATH = ROOT_PATH + "images/shop/traffic/";
		
		String SLIDER_PATH = ROOT_PATH + "images/slider/";
		
		String OTHER_PATH = ROOT_PATH + "images/other/";
		
		String TRAVEL_PATH = ROOT_PATH + "images/travel/";

		/**
		 * 用户登录信息存放Key
		 */
		String USER = "user";

		/**
		 * 当前导航按钮
		 */
		String NAV = "nav";

		/**
		 * 重定向
		 */
		String REDIRECT = "redirect:";

		/**
		 * 地区
		 */
		String LOCALE = "locale";
		
		/**
		 * 分页对象 
		 */
		String PAGE = "page";
		
		String TRAVEL_LIST = "travels";

		String MENU_INDEX = "menuIndex";
		
		String SUB_MENU_INDEX = "subMenuIndex";
		
		String LINKS = "friendLinks1";
		
		String LINKS2 = "friendLinks2";
	}

	/**
	 * 全局KEY
	 * 
	 * @author Administrator
	 * 
	 */
	interface APPLICATION {

		/**
		 * 语言列表
		 */
		String LANGUAGES = "languages";
	}

	interface SESSION {
		/**
		 * 当前网站语言
		 */
		String LANGUAGE = "language";
	}

	/**
	 * 导航条标识量
	 * 
	 * @author Administrator
	 * 
	 */
	interface NAVBAR {

		/**
		 * 首页
		 */
		String HOME = "home";

		/**
		 * 客房预定
		 */
		String ROOM = "room";

		/**
		 * 交通
		 */
		String TRAFFIC = "traffic";

		/**
		 * 关于我们
		 */
		String ABOUT_US = "aboutUs";

		/**
		 * 常见问题
		 */
		String FAQ = "faq";

		/**
		 * 招聘信息
		 */
		String RECRUIT = "recruit";
		
		/**
		 * 
		 */
		String SALE = "sale";
	}

	/**
	 * AJAX操作状态量
	 * 
	 * @author Administrator
	 * 
	 */
	interface AJAX {
		/**
		 * 成功
		 */
		boolean SUCCESS = true;

		/**
		 * 失败
		 */
		boolean FAIL = false;
	}
	
	interface MSG {
		
		String SUCCESS = "操作成功";
		
		String FAIL = "操作失败";
		
		String SERVER_ERR = "服务器出错!"; 
	}

	/**
	 * 状态常量 YES or NO
	 * 
	 * @author Administrator
	 * 
	 */
	interface FLAG {

		String YES = "1";

		String NO = "0";
	}
}
