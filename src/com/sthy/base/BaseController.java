package com.sthy.base;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.LocaleResolver;

import com.sthy.pojo.Page;
import com.sthy.util.CONST;

public class BaseController {

	public Logger log = Logger.getLogger(BaseController.class);

	protected Page getPage(Page page) {
		return page == null ? new Page() : page;
	}

	/**
	 * 获取重定向字符串
	 * 
	 * @param url
	 * @return
	 */
	protected String redirect(String url) {
		return CONST.BASE.REDIRECT + url;
	}

	/**
	 * 设置当前导航栏
	 * 
	 * @param session
	 * @param navBar
	 */
	protected void setNav(HttpServletRequest request, String navBar) {
		request.setAttribute(CONST.BASE.NAV, navBar);
	}

	/**
	 * 获取当前语言编码
	 * 
	 * @param localeResolver
	 * @param request
	 * @return String : zh_CN en_US
	 */
	protected String getCurrentLocale(LocaleResolver localeResolver,
			HttpServletRequest request) {
		Locale language = localeResolver.resolveLocale(request);
		return language.toString();
	}

	/**
	 * 获取远程访问IP
	 * 
	 * @return
	 */
	protected String getRemoteIp(HttpServletRequest request) {
		String remoteIp = null;
		if (remoteIp == null || remoteIp.length() == 0) {
			remoteIp = request.getHeader("x-forwarded-for");
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getHeader("X-Real-IP");
			}
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getHeader("Proxy-Client-IP");
			}
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getHeader("WL-Proxy-Client-IP");
			}
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getHeader("HTTP_CLIENT_IP");
			}
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getHeader("HTTP_X_FORWARDED_FOR");
			}
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getRemoteAddr();
			}
			if (remoteIp == null || remoteIp.isEmpty()
					|| "unknown".equalsIgnoreCase(remoteIp)) {
				remoteIp = request.getRemoteHost();
			}
		}
		return remoteIp;
	}

	protected void page(Map<String, Object> map, int page, int rows) {
		if (page <= 0) {
			page = 1;
		}
		map.put("startPage", (page - 1) * rows);
		map.put("endPage", rows);
	}
}
