package com.sthy.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sthy.pojo.User;
import com.sthy.util.CONST;

/**
 * 判断是否登录
 * 
 * @since 过滤器
 * @author Administrator
 * 
 */
public class LoginFilter implements Filter {

	protected FilterConfig filterConfig = null;

	/**
	 * 如果用户未登录，则重定向到指定的页面，URL不包括 ContextPath
	 */
	private String redirectURL = null;

	/**
	 * 不做检查的URL列表，以分号分开，并且 URL 中不包括 ContextPath
	 */
	private List<String> notCheckURLList = new ArrayList<String>();

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		// 初始化重定向页面
		redirectURL = this.filterConfig.getInitParameter("redirectURL");
		// 初始化要不做检查的URL列表
		String notCheckURLListStr = this.filterConfig
				.getInitParameter("notCheckURLList");

		if (notCheckURLListStr != null) {
			StringTokenizer st = new StringTokenizer(notCheckURLListStr, ";");
			notCheckURLList.clear();
			while (st.hasMoreTokens()) {
				notCheckURLList.add(st.nextToken());
			}
		}

	}

	@Override
	public void doFilter(ServletRequest servletRequest,
			ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		// HttpSession session = request.getSession();
		// 如果不在检查队列直接放行
		if (notCheckRequestURIFilterList(request)) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		if (isLogin(request)) {
			chain.doFilter(servletRequest, servletResponse);
			return;
		}
		response.sendRedirect(request.getContextPath() + redirectURL);
		return;
	}

	@Override
	public void destroy() {

	}

	/**
	 * 校验用户是否登陆
	 * 
	 * @param request
	 * @return
	 */
	private boolean isLogin(HttpServletRequest request) {
		boolean isLogin = false;
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(CONST.BASE.USER);
		if (user != null) {
			isLogin = true;
		} else {
			isLogin = false;
		}
		return isLogin;
	}

	/**
	 * 校验当前URI是否在非检查队列中
	 * 
	 * @param request
	 * @return
	 */
	private boolean notCheckRequestURIFilterList(HttpServletRequest request) {
		String uri = request.getServletPath()
				+ (request.getPathInfo() == null ? "" : request.getPathInfo());
		return notCheckURLList.contains(uri);
	}
}