package com.sthy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.sthy.base.BaseController;
import com.sthy.pojo.XhEditorResult;
import com.sthy.util.CONST;
import com.sthy.util.FileUtils;

@Controller
@RequestMapping(value = "/manage/xheditor")
public class XhEditorUploadController extends BaseController {

	@RequestMapping(value = "/uploadShopRoomImg", method = RequestMethod.POST)
	@ResponseBody
	public XhEditorResult uploadShopRoomImg(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session) {
		XhEditorResult result = new XhEditorResult();
		try {
			MultipartFile file = multipartRequest.getFile("filedata");
			if (file != null && !file.isEmpty()) {
				String path = CONST.BASE.ROOM_PATH;
				String fileName = FileUtils.save(file, path);
				String url = "http://" + request.getServerName() + ":"
						+ request.getServerPort() + request.getContextPath()
						+ "/images/shop/room/" + fileName;
				result.setErr(null);
				result.setMsg(url);
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error("uploadShopRoomImg:", e);
			result.setErr(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/uploadShopAboutusImg", method = RequestMethod.POST)
	@ResponseBody
	public XhEditorResult uploadShopAboutusImg(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session) {
		XhEditorResult result = new XhEditorResult();
		try {
			MultipartFile file = multipartRequest.getFile("filedata");
			if (file != null && !file.isEmpty()) {
				String path = CONST.BASE.ABOUTUS_PATH;
				String fileName = FileUtils.save(file, path);
				String url = "http://" + request.getServerName() + ":"
						+ request.getServerPort() + request.getContextPath()
						+ "/images/shop/aboutus/" + fileName;
				result.setErr(null);
				result.setMsg(url);
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error("uploadShopAboutusImg:", e);
			result.setErr(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/uploadShopTrafficImg", method = RequestMethod.POST)
	@ResponseBody
	public XhEditorResult uploadShopTrafficImg(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session) {
		XhEditorResult result = new XhEditorResult();
		try {
			MultipartFile file = multipartRequest.getFile("filedata");
			if (file != null && !file.isEmpty()) {
				String path = CONST.BASE.TRAFFIC_PATH;
				String fileName = FileUtils.save(file, path);
				String url = "http://" + request.getServerName() + ":"
						+ request.getServerPort() + request.getContextPath()
						+ "/images/shop/traffic/" + fileName;
				result.setErr(null);
				result.setMsg(url);
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error("uploadShopTrafficImg:", e);
			result.setErr(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/uploadOtherImg", method = RequestMethod.POST)
	@ResponseBody
	public XhEditorResult uploadOtherImg(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session) {
		XhEditorResult result = new XhEditorResult();
		try {
			MultipartFile file = multipartRequest.getFile("filedata");
			if (file != null && !file.isEmpty()) {
				String path = CONST.BASE.OTHER_PATH;
				String fileName = FileUtils.save(file, path);
				String url = "http://" + request.getServerName() + ":"
						+ request.getServerPort() + request.getContextPath()
						+ "/images/other/" + fileName;
				result.setErr(null);
				result.setMsg(url);
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error("uploadOtherImg:", e);
			result.setErr(CONST.MSG.SERVER_ERR);
		}
		return result;
	}

	@RequestMapping(value = "/uploadTravelImg", method = RequestMethod.POST)
	@ResponseBody
	public XhEditorResult uploadTravelImg(ModelAndView model,
			HttpServletRequest request, HttpServletResponse response,
			MultipartHttpServletRequest multipartRequest, HttpSession session) {
		XhEditorResult result = new XhEditorResult();
		try {
			MultipartFile file = multipartRequest.getFile("filedata");
			if (file != null && !file.isEmpty()) {
				String path = CONST.BASE.TRAVEL_PATH;
				String fileName = FileUtils.save(file, path);
				String url = "http://" + request.getServerName() + ":"
						+ request.getServerPort() + request.getContextPath()
						+ "/images/travel/" + fileName;
				result.setErr(null);
				result.setMsg(url);
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error("uploadTravelImg:", e);
			result.setErr(CONST.MSG.SERVER_ERR);
		}
		return result;
	}
}
