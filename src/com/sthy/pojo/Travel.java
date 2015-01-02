package com.sthy.pojo;

import com.sthy.base.BasePojo;

public class Travel extends BasePojo {

	private static final long serialVersionUID = 6256257875267296773L;

	/**
	 * 标题
	 */
	private String title;

	/**
	 * 描述
	 */
	private String description;
	
	private String shop_id;

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

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
}
