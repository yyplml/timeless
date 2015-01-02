package com.sthy.pojo;

import com.sthy.base.BasePojo;

/**
 * 招聘信息
 * 
 * @author Administrator
 * 
 */
public class Recruit extends BasePojo {

	private static final long serialVersionUID = 4551200865604121121L;

	/**
	 * 标题
	 */
	private String title;

	/**
	 * 描述
	 */
	private String description;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
