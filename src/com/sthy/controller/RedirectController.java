package com.sthy.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sthy.base.BaseController;

@Controller
@RequestMapping(value = "/redirect")
public class RedirectController extends BaseController {

	@RequestMapping(value = "")
	public ModelAndView redirect(HttpServletResponse response,String url) {
		try {
			response.sendRedirect(url);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
