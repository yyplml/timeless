package com.sthy.pojo;

import com.sthy.base.BasePojo;

public class ShopImg extends BasePojo {

	private static final long serialVersionUID = 899973296088558043L;

	private String shop_id;

	private String type;

	private String type_name;

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
}
