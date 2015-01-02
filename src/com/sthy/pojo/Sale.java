package com.sthy.pojo;

import com.sthy.base.BasePojo;

public class Sale extends BasePojo {

	private static final long serialVersionUID = 7780279161351043507L;

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
