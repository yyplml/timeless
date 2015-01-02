package com.sthy.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ModelAndView;
import com.sthy.base.BaseController;
import com.sthy.pojo.Page;
import com.sthy.pojo.Recruit;
import com.sthy.pojo.Sale;
import com.sthy.pojo.Shop;
import com.sthy.pojo.Slider;
import com.sthy.service.IHomeService;
import com.sthy.util.CONST;

/**
 * 首页控制器
 * 
 * @author Administrator
 * 
 */
@Controller
@RequestMapping(value = "/home")
public class HomeController extends BaseController {

	@Autowired
	private IHomeService homeService;

	@Autowired
	private LocaleResolver localeResolver;

	/**
	 * 跳转首页
	 * 
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/goHome")
	public ModelAndView goHome(HttpServletRequest request,
			HttpServletResponse response, HttpSession session) {
		this.setNav(request, CONST.NAVBAR.HOME);
		ModelAndView view = new ModelAndView("Home");
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		List<Slider> sliders = homeService.querySliderList(param);
		// 图片取客房预定
		param.put("type", "room");
		List<Shop> shops = this.homeService.queryShopList(param);
		List<Recruit> recruits = this.homeService.queryRecruitList(param);
		List<Sale> sales = this.homeService.querySaleList(param);
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject("sliders", sliders);
		view.addObject("shops", shops);
		view.addObject("recruits", recruits);
		view.addObject("sales", sales);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		return view;
	}

	/**
	 * 跳转客房预定
	 * 
	 * @param session
	 * @param locale
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goRoomBook")
	public ModelAndView goRoomBook(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws IOException {
		this.setNav(request, CONST.NAVBAR.ROOM);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		param.put("type", "room");
		List<Shop> shops = this.homeService.queryShopList(param);
		view.addObject("list", shops);
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("RoomBook");
		return view;
	}

	/**
	 * 跳转交通路线
	 * 
	 * @param session
	 * @param locale
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goTraffic")
	public ModelAndView goTraffic(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String locale) throws IOException {
		this.setNav(request, CONST.NAVBAR.TRAFFIC);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		view.addObject("list", this.homeService.queryTrafficList(param));
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("Traffic");
		return view;
	}

	/**
	 * 跳转关于我们
	 * 
	 * @param session
	 * @param locale
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goAboutUs")
	public ModelAndView goAboutUs(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String locale) throws IOException {
		this.setNav(request, CONST.NAVBAR.ABOUT_US);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		param.put("type", "aboutus");
		view.addObject("list", this.homeService.queryShopList(param));
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("AboutUs");
		return view;
	}

	/**
	 * 跳转FAQ
	 * 
	 * @param session
	 * @param locale
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goFaq")
	public ModelAndView goFaq(ModelAndView view, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, String locale)
			throws IOException {
		this.setNav(request, CONST.NAVBAR.FAQ);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		view.addObject("list", this.homeService.queryShopFaqList(param));
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("Faq");
		return view;
	}

	/**
	 * 跳转招聘列表页面
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param locale
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goRecruit")
	public ModelAndView goRecruit(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String locale, Page page) throws IOException {
		this.setNav(request, CONST.NAVBAR.RECRUIT);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		view.addObject("list", this.homeService.queryRecruitPageList(param,
				this.getPage(page)));
		view.addObject(CONST.BASE.PAGE, page);
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("Recruit");
		return view;
	}

	/**
	 * 跳转招聘信息详细页面
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param locale
	 * @param page
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goRecruitDetail")
	public ModelAndView goRecruitDetail(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id) throws IOException {
		this.setNav(request, CONST.NAVBAR.RECRUIT);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		param.put("id", id);
		view.addObject("item", this.homeService.queryRecruitById(param));
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("RecruitDetail");
		return view;
	}

	/**
	 * 跳转优惠信息详细页面
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param locale
	 * @param page
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goSaleDetail")
	public ModelAndView goSaleDetail(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String locale, String id) throws IOException {
		this.setNav(request, CONST.NAVBAR.SALE);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		param.put("id", id);
		view.addObject("item", this.homeService.querySaleById(param));
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("SaleDetail");
		return view;
	}
	
	/**
	 * 跳转旅游信息详细页面
	 * 
	 * @param request
	 * @param response
	 * @param session
	 * @param locale
	 * @param page
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/goTravelDetail")
	public ModelAndView goTravelDetail(ModelAndView view,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String locale, String id) throws IOException {
		this.setNav(request, CONST.NAVBAR.SALE);
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("locale", this.getCurrentLocale(localeResolver, request));
		param.put("id", id);
		view.addObject("item", this.homeService.queryTravelById(param));
		List<Shop> travels = this.homeService.queryTravelList(param);
		view.addObject(CONST.BASE.TRAVEL_LIST, travels);
		view.setViewName("TravelDetail");
		return view;
	}

}
