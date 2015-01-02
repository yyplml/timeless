package com.sthy.pojo;

import com.sthy.base.BasePojo;

/**
 * 语言选择
 * 
 * @author Administrator
 * 
 */
public class Language extends BasePojo {

	private static final long serialVersionUID = 4477664884972300368L;
	
	private String locale;

	public String getLocale() {
		return locale;
	}

	public void setLocale(String locale) {
		this.locale = locale;
	}

}
