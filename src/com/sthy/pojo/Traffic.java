package com.sthy.pojo;

import com.sthy.base.BasePojo;

/**
 * 
 * @author Administrator
 *
 */
public class Traffic extends BasePojo {
	
	private static final long serialVersionUID = 732729133532386770L;

	private String shop_id;
	
	private String desc;
	
	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}
