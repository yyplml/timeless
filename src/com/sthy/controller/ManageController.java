package com.sthy.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.sthy.base.BaseController;
import com.sthy.pojo.Faq;
import com.sthy.pojo.Language;
import com.sthy.pojo.Menu;
import com.sthy.pojo.Page;
import com.sthy.pojo.Recruit;
import com.sthy.pojo.Result;
import com.sthy.pojo.Role;
import com.sthy.pojo.Sale;
import com.sthy.pojo.Shop;
import com.sthy.pojo.ShopDetail;
import com.sthy.pojo.ShopImg;
import com.sthy.pojo.Slider;
import com.sthy.pojo.Traffic;
import com.sthy.pojo.Travel;
import com.sthy.pojo.User;
import com.sthy.service.IManageService;
import com.sthy.util.CONST;
import com.sthy.util.DateUtils;
import com.sthy.util.FileUtils;
import com.sthy.util.MD5Utils;

@Controller
@RequestMapping(value = "/manage")
public class ManageController extends BaseController {

	@Autowired
	private IManageService manageService;

	@RequestMapping(value = "/goLogin")
	public ModelAndView goLogin() {
		return new ModelAndView("manage/Login");
	}

	@RequestMapping(value = "/login")
	@ResponseBody
	public Result login(HttpServletRequest request,
			HttpServletResponse response, HttpSession session, User user) {
		Result result = new Result();
		if (manageService.login(user)) {
			session.setAttribute(CONST.BASE.USER, user);
			result.setCode(true);
		} else {
			result.setMessage("用户名或者密码错误!");
		}
		return result;
	}

	@RequestMapping(value = "/loginOut")
	public ModelAndView loginOut(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session) {
		session.invalidate();
		model.setViewName("manage/Login");
		return model;
	}
	
	@RequestMapping(value = "/editPassword")
	@ResponseBody
	public Result editPassword(String newPassword,HttpSession session) {
		Result result = new Result();
		User user = (User) session.getAttribute(CONST.BASE.USER);
		user.setPassword(MD5Utils.encryption(newPassword));
		this.manageService.editPassword(user);
		result.setCode(true);
		result.setMessage("密码修改成功!");
		return result;
	}

	@RequestMapping(value = "/goManage")
	public ModelAndView goManage() {
		return new ModelAndView("manage/Manage");
	}

	/**
	 * 语言管理
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param session
	 * @param menuIndex
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/goLanguageManage")
	public ModelAndView goLanguageManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		List<Language> list = this.manageService.queryLanguagePageList(param,
				this.getPage(page));
		model.setViewName("manage/Language");
		model.addObject("list", list);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/addLanguage")
	@ResponseBody
	public Result addLanguage(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Language language) {
		Result result = new Result(false);
		result.setMessage(CONST.MSG.FAIL);
		try {
			this.manageService.addLanguage(language);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addLanguage", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/editLanguage")
	@ResponseBody
	public Result editLanguage(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Language language) {
		Result result = new Result(false);
		result.setMessage(CONST.MSG.FAIL);
		try {
			this.manageService.editLanguage(language);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editLanguage", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delLanguage")
	@ResponseBody
	public Result delLanguage(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Language language) {
		Result result = new Result(false);
		result.setMessage(CONST.MSG.FAIL);
		try {
			this.manageService.delLanguage(language);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delLanguage", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/queryLanguageDetail")
	@ResponseBody
	public Result queryLanguageDetail(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id) {
		Result result = new Result(false);
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			Language language = this.manageService.queryLanguageById(param);
			result.setCode(true);
			result.setData(language);
		} catch (Exception e) {
			log.error("queryLanguageDetail", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	/**
	 * 轮播管理
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param session
	 * @param menuIndex
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/goSliderManage")
	public ModelAndView goSliderManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		List<Slider> list = this.manageService.querySliderPageList(param,
				this.getPage(page));
		model.setViewName("manage/Slider");
		model.addObject("list", list);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/addSlider")
	@ResponseBody
	public Result addSlider(HttpServletRequest request,
			HttpServletResponse response, HttpSession session,
			ModelAndView model, Slider slider,
			MultipartHttpServletRequest multipartRequest) {
		Result result = new Result(false);
		result.setMessage(CONST.MSG.FAIL);
		try {
			if (slider == null) {
				slider = new Slider();
			}
			MultipartFile file = multipartRequest.getFile("file");
			if (file != null && !file.isEmpty()) {
				String image = FileUtils.save(file, CONST.BASE.SLIDER_PATH);
				slider.setImage(image);
				this.manageService.addSlider(slider);
				result.setCode(true);
				result.setMessage(CONST.MSG.SUCCESS);
			}
		} catch (Exception e) {
			log.error("addSlider", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/editSlider")
	@ResponseBody
	public Result editSlider(HttpServletRequest request,
			HttpServletResponse response, HttpSession session,
			ModelAndView model, MultipartHttpServletRequest multipartRequest,
			Slider slider) {
		Result result = new Result(false);
		result.setMessage(CONST.MSG.FAIL);
		try {
			MultipartFile file = multipartRequest.getFile("file");
			if (file != null && !file.isEmpty()) {
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("id", slider.getId());
				Slider temps = this.manageService.querySliderById(param);
				String image = FileUtils.save(file, CONST.BASE.SLIDER_PATH);
				FileUtils.remove(CONST.BASE.SLIDER_PATH + temps.getImage());
				slider.setImage(image);
			}
			this.manageService.editSlider(slider);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editSlider", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delSlider")
	@ResponseBody
	public Result delSlider(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Slider slider) {
		Result result = new Result(false);
		result.setMessage(CONST.MSG.FAIL);
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", slider.getId());
			slider = this.manageService.querySliderById(param);
			FileUtils.remove(CONST.BASE.SLIDER_PATH + slider.getImage());
			this.manageService.delSlider(slider);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delSlider", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/querySliderDetail")
	@ResponseBody
	public Result querySliderDetail(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id) {
		Result result = new Result(false);
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", id);
			Slider slider = this.manageService.querySliderById(param);
			result.setCode(true);
			result.setData(slider);
		} catch (Exception e) {
			log.error("querySliderDetail", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	/**
	 * 店铺管理
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param session
	 * @param menuIndex
	 * @param page
	 * @return
	 */
	@RequestMapping(value = "/goShopManage")
	public ModelAndView goShopManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		List<Shop> list = this.manageService.queryShopPageList(param,
				this.getPage(page));
		model.setViewName("manage/Shop");
		model.addObject("list", list);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/addShop")
	@ResponseBody
	public Result addShop(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Shop shop) {
		Result result = new Result();
		try {
			this.manageService.addShop(shop);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShop", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/editShop")
	@ResponseBody
	public Result editShop(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Shop shop) {
		Result result = new Result();
		try {
			this.manageService.editShop(shop);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editShop", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delShop")
	@ResponseBody
	public Result delShop(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Shop shop) {
		Result result = new Result();
		try {
			this.manageService.delShop(shop);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delShop", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goShopBasic")
	public ModelAndView goShopBasic(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id, String menuIndex,
			String subMenuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Shop shop = this.manageService.queryShopById(param);
		model.addObject("shop", shop);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.addObject(CONST.BASE.SUB_MENU_INDEX, subMenuIndex);
		model.setViewName("manage/ShopBasic");
		return model;
	}

	@RequestMapping(value = "/goShopRoom")
	public ModelAndView goShopRoom(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id, String menuIndex,
			String subMenuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Shop shop = this.manageService.queryShopById(param);
		// 基本信息
		model.addObject("shop", shop);
		model.addObject("detail",
				this.manageService.queryShopDetailByShopId(param));
		model.setViewName("manage/ShopRoom");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.addObject(CONST.BASE.SUB_MENU_INDEX, subMenuIndex);
		return model;
	}

	@RequestMapping(value = "/goShopTraffic")
	public ModelAndView goShopTraffic(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id, String menuIndex,
			String subMenuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Shop shop = this.manageService.queryShopById(param);
		// 基本信息
		model.addObject("shop", shop);
		model.addObject("traffic",
				this.manageService.queryTrafficByShopId(param));
		model.setViewName("manage/ShopTraffic");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.addObject(CONST.BASE.SUB_MENU_INDEX, subMenuIndex);
		return model;
	}

	@RequestMapping(value = "/editTraffic")
	@ResponseBody
	public Result editTraffic(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Traffic traffic) {
		Result result = new Result();
		try {
			this.manageService.editTraffic(traffic);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editTraffic", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goShopAboutus")
	public ModelAndView goShopAboutus(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id, String menuIndex,
			String subMenuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Shop shop = this.manageService.queryShopById(param);
		// 基本信息
		model.addObject("shop", shop);
		model.addObject("detail",
				this.manageService.queryShopDetailByShopId(param));
		model.setViewName("manage/ShopAboutus");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.addObject(CONST.BASE.SUB_MENU_INDEX, subMenuIndex);
		return model;
	}

	@RequestMapping(value = "/editShopDetail")
	@ResponseBody
	public Result editShopDetail(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, ShopDetail shopDetail) {
		Result result = new Result();
		try {
			this.manageService.editShopDetail(shopDetail);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editShopDetail", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goShopFaq")
	public ModelAndView goShopFaq(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id, String menuIndex,
			String subMenuIndex, Page page, String queryContent)
			throws UnsupportedEncodingException {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Shop shop = this.manageService.queryShopById(param);
		param.put("shop_id", shop.getId());
		param.put("queryContent", queryContent);
		model.addObject("list",
				this.manageService.queryFAQPageList(param, this.getPage(page)));
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject("queryContent", queryContent);
		model.addObject("shop", shop);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.addObject(CONST.BASE.SUB_MENU_INDEX, subMenuIndex);
		model.setViewName("manage/ShopFaq");
		return model;
	}

	@RequestMapping(value = "/addShopFaq")
	@ResponseBody
	public Result addShopFaq(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Faq faq) {
		Result result = new Result();
		try {
			this.manageService.addShopFAQ(faq);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShopFaq", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/editShopFaq")
	@ResponseBody
	public Result editShopFaq(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Faq faq) {
		Result result = new Result();
		try {
			this.manageService.editShopFAQ(faq);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShopFaq", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delShopFaq")
	@ResponseBody
	public Result delShopFaq(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Faq faq) {
		Result result = new Result();
		try {
			this.manageService.delShopFAQ(faq);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShopFaq", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/queryShopFaq")
	@ResponseBody
	public Result queryShopFaq(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, String id) {
		Result result = new Result();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Faq faq = this.manageService.queryFAQByShopId(param);
		result.setCode(true);
		result.setData(faq);
		result.setMessage(CONST.MSG.SUCCESS);
		return result;
	}

	@RequestMapping(value = "/goShopImg")
	public ModelAndView goShopImg(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String id, String type, String menuIndex,
			String subMenuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Shop shop = this.manageService.queryShopById(param);
		param.put("shop_id", shop.getId());
		param.put("type", type);
		page = this.getPage(page);
		page.setPageSize(5);
		model.addObject("shop", shop);
		model.addObject("query_type", type);
		model.addObject("list",
				this.manageService.queryShopImgPageList(param, page));
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.addObject(CONST.BASE.SUB_MENU_INDEX, subMenuIndex);
		model.setViewName("manage/ShopImg");
		return model;
	}

	@RequestMapping(value = "/addShopImg")
	@ResponseBody
	public Result addShopImg(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session,
			ShopImg shopImg) {
		Result result = new Result();
		MultipartFile file = multipartRequest.getFile("file");
		if (file != null && !file.isEmpty()) {
			String path = null;
			if ("aboutus".equals(shopImg.getType())) {
				path = CONST.BASE.ABOUTUS_PATH;
			} else if ("room".equals(shopImg.getType())) {
				path = CONST.BASE.ROOM_PATH;
			}
			try {
				String name = FileUtils.save(file, path);
				shopImg.setName(name);
				this.manageService.addShopImg(shopImg);
				result.setCode(true);
				result.setMessage(CONST.MSG.SUCCESS);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@RequestMapping(value = "/editShopImg")
	@ResponseBody
	public Result editShopImg(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session,
			ShopImg shopImg) {
		Result result = new Result();
		MultipartFile file = multipartRequest.getFile("file");
		try {
			String path = null;
			if ("aboutus".equals(shopImg.getType())) {
				path = CONST.BASE.ABOUTUS_PATH;
			} else if ("room".equals(shopImg.getType())) {
				path = CONST.BASE.ROOM_PATH;
			}
			if (file != null && !file.isEmpty()) {
				// 保存新文件
				String name = FileUtils.save(file, path);
				// 先删除原来的文件
				FileUtils.remove(path + shopImg.getName());
				// 保存新文件名
				shopImg.setName(name);
			} else {
				String oldPath = null;
				if ("aboutus".equals(shopImg.getType())) {
					oldPath = CONST.BASE.ROOM_PATH;
				} else if ("room".equals(shopImg.getType())) {
					oldPath = CONST.BASE.ABOUTUS_PATH;
				}
				if (!FileUtils.exists(path + shopImg.getName())
						&& FileUtils.exists(oldPath + shopImg.getName())) {
					FileUtils.move(oldPath, path, shopImg.getName());
				}
			}
			this.manageService.editShopImg(shopImg);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/delShopImg")
	@ResponseBody
	public Result delShopImg(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, ShopImg shopImg) {
		Result result = new Result();
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			param.put("id", shopImg.getId());
			shopImg = this.manageService.queryShopImgById(param);
			String path = null;
			if ("aboutus".equals(shopImg.getType())) {
				path = CONST.BASE.ABOUTUS_PATH;
			} else if ("room".equals(shopImg.getType())) {
				path = CONST.BASE.ROOM_PATH;
			}
			FileUtils.remove(path + shopImg.getName());
			this.manageService.delShopImg(shopImg);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (IllegalStateException e) {
			e.printStackTrace();
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/queryShopImg")
	@ResponseBody
	public Result queryShopImg(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, String id) {
		Result result = new Result();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		ShopImg shopImg = this.manageService.queryShopImgById(param);
		result.setCode(true);
		result.setData(shopImg);
		result.setMessage(CONST.MSG.SUCCESS);
		return result;
	}

	@RequestMapping(value = "/goRecruitManage")
	public ModelAndView goRecruitManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, String queryLanaguageId,
			Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("queryLanaguageId", queryLanaguageId);
		List<Recruit> list = this.manageService.queryRecruitPageList(param,
				page);
		model.addObject("list", list);
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject("queryLanaguageId", queryLanaguageId);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.setViewName("manage/Recruit");
		return model;
	}

	@RequestMapping(value = "/goAddRecruit")
	public ModelAndView goAddRecruit(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex) {
		model.setViewName("manage/RecruitAdd");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/addRecruit")
	@ResponseBody
	public Result addRecruit(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Recruit recruit) {
		Result result = new Result();
		try {
			recruit.setCreate_time(DateUtils.getNowTime());
			this.manageService.addRecruit(recruit);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShopFaq", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goEditRecruit")
	public ModelAndView goEditRecruit(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, String id) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Recruit recruit = this.manageService.queryRecruitById(param);
		model.addObject("recruit", recruit);
		model.setViewName("manage/RecruitEdit");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/editRecruit")
	@ResponseBody
	public Result editRecruit(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Recruit recruit) {
		Result result = new Result();
		try {
			this.manageService.editRecruit(recruit);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShopFaq", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delRecruit")
	@ResponseBody
	public Result delRecruit(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Recruit recruit) {
		Result result = new Result();
		try {
			this.manageService.delRecruit(recruit);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addShopFaq", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goSaleManage")
	public ModelAndView goSaleManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, String queryLanaguageId,
			Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("queryLanaguageId", queryLanaguageId);
		List<Sale> list = this.manageService.querySalePageList(param, page);
		model.addObject("list", list);
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject("queryLanaguageId", queryLanaguageId);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.setViewName("manage/Sale");
		return model;
	}

	@RequestMapping(value = "/goAddSale")
	public ModelAndView goAddSale(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex) {
		model.setViewName("manage/SaleAdd");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/addSale")
	@ResponseBody
	public Result addSale(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Sale sale) {
		Result result = new Result();
		try {
			sale.setCreate_time(DateUtils.getNowTime());
			this.manageService.addSale(sale);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addSale", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goEditSale")
	public ModelAndView goEditSale(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, String id) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Sale sale = this.manageService.querySaleById(param);
		model.addObject("sale", sale);
		model.setViewName("manage/SaleEdit");
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/editSale")
	@ResponseBody
	public Result editSale(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Sale sale) {
		Result result = new Result();
		try {
			this.manageService.editSale(sale);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editSale", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delSale")
	@ResponseBody
	public Result delSale(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Sale sale) {
		Result result = new Result();
		try {
			this.manageService.delSale(sale);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delSale", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goTravelManage")
	public ModelAndView goTravelManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, String queryShopId, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("queryShopId", queryShopId);
		List<Travel> list = this.manageService.queryTravelPageList(param, page);
		model.addObject("list", list);
		List<Shop> shops = this.manageService.queryShopList(null);
		model.addObject("shops", shops);
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject("queryShopId", queryShopId);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.setViewName("manage/Travel");
		return model;
	}

	@RequestMapping(value = "/goAddTravel")
	public ModelAndView goAddTravel(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex) {
		model.setViewName("manage/TravelAdd");
		List<Shop> shops = this.manageService.queryShopList(null);
		model.addObject("shops", shops);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		return model;
	}

	@RequestMapping(value = "/addTravel")
	@ResponseBody
	public Result addTravel(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Travel travel) {
		Result result = new Result();
		try {
			travel.setCreate_time(DateUtils.getNowTime());
			this.manageService.addTravel(travel);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addSale", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/goEditTravel")
	public ModelAndView goEditTravel(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, String id) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Travel travel = this.manageService.queryTravelById(param);
		model.addObject("travel", travel);
		List<Shop> shops = this.manageService.queryShopList(null);
		model.addObject("shops", shops);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.setViewName("manage/TravelEdit");
		return model;
	}

	@RequestMapping(value = "/editTravel")
	@ResponseBody
	public Result editTravel(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Travel travel) {
		Result result = new Result();
		try {
			this.manageService.editTravel(travel);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editSale", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delTravel")
	@ResponseBody
	public Result delTravel(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Travel travel) {
		Result result = new Result();
		try {
			this.manageService.delTravel(travel);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delSale", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}
	
	@RequestMapping(value = "/goUserManage")
	public ModelAndView goUserManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		List<User> list = this.manageService.queryUserPageList(param, page);
		List<Role> roles = this.manageService.queryRoleList(null);
		model.addObject("list", list);
		model.addObject("roles", roles);
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.setViewName("manage/User");
		return model;
	}
	

	@RequestMapping(value = "/addUser")
	@ResponseBody
	public Result addUser(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, User user) {
		Result result = new Result();
		try {
			this.manageService.addUser(user);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addUser", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/editUser")
	@ResponseBody
	public Result editUser(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, User user) {
		Result result = new Result();
		try {
			this.manageService.editUser(user);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editUser", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delUser")
	@ResponseBody
	public Result delUser(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, User user) {
		Result result = new Result();
		try {
			this.manageService.delUser(user);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delUser", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}
	
	@RequestMapping(value = "/queryUserDetail")
	@ResponseBody
	public Result queryUserDetail(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, String id) {
		Result result = new Result();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		User user = this.manageService.queryUserById(param);
		result.setCode(true);
		result.setData(user);
		result.setMessage(CONST.MSG.SUCCESS);
		return result;
	}
	

	@RequestMapping(value = "/goRoleManage")
	public ModelAndView goRoleManage(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			HttpSession session, String menuIndex, Page page) {
		Map<String, Object> param = new HashMap<String, Object>();
		List<Role> list = this.manageService.queryRolePageList(param, page);
		List<Menu> menus = this.manageService.queryMenuList(null);
		model.addObject("list", list);
		model.addObject("menus", menus);
		model.addObject(CONST.BASE.PAGE, page);
		model.addObject(CONST.BASE.MENU_INDEX, menuIndex);
		model.setViewName("manage/Role");
		return model;
	}
	

	@RequestMapping(value = "/addRole")
	@ResponseBody
	public Result addRole(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Role role, String[] menu_ids) {
		Result result = new Result();
		try {
			if(menu_ids != null && menu_ids.length > 0) {
				List<Menu> menus = new ArrayList<Menu>();
				for(String menu_id : menu_ids) {
					Menu menu = new Menu();
					menu.setId(menu_id);
					menus.add(menu);
				}
				role.setMenus(menus);
			}
			this.manageService.addRole(role);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("addRole", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/editRole")
	@ResponseBody
	public Result editRole(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Role role, String[] menu_ids) {
		Result result = new Result();
		try {
			if(menu_ids != null && menu_ids.length > 0) {
				List<Menu> menus = new ArrayList<Menu>();
				for(String menu_id : menu_ids) {
					Menu menu = new Menu();
					menu.setId(menu_id);
					menus.add(menu);
				}
				role.setMenus(menus);
			}
			this.manageService.editRole(role);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("editRole", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/delRole")
	@ResponseBody
	public Result delRole(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, Role role) {
		Result result = new Result();
		try {
			this.manageService.delRole(role);
			result.setCode(true);
			result.setMessage(CONST.MSG.SUCCESS);
		} catch (Exception e) {
			log.error("delRole", e);
			result.setMessage(CONST.MSG.SERVER_ERR);
		}
		return result;
	}
	
	@RequestMapping(value = "/queryRoleDetail")
	@ResponseBody
	public Result queryRoleDetail(ModelAndView model, HttpServletRequest request,
			HttpServletResponse response, HttpSession session, String id) {
		Result result = new Result();
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("id", id);
		Role role = this.manageService.queryRoleById(param);
		result.setCode(true);
		result.setData(role);
		result.setMessage(CONST.MSG.SUCCESS);
		return result;
	}
}
