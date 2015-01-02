package com.sthy.pojo;

import com.sthy.base.BasePojo;

/**
 * 详细
 * @author Administrator
 *
 */
public class ShopDetail extends BasePojo {

	private static final long serialVersionUID = -8706319201114700291L;

	private String shop_id;
	
	private String shop_hours;
	
	private String shop_facility;
	
	private String shop_notice;
	
	private String shop_cancel;
	
	private String shop_desc;

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_hours() {
		return shop_hours;
	}

	public void setShop_hours(String shop_hours) {
		this.shop_hours = shop_hours;
	}

	public String getShop_facility() {
		return shop_facility;
	}

	public void setShop_facility(String shop_facility) {
		this.shop_facility = shop_facility;
	}

	public String getShop_notice() {
		return shop_notice;
	}

	public void setShop_notice(String shop_notice) {
		this.shop_notice = shop_notice;
	}

	public String getShop_cancel() {
		return shop_cancel;
	}

	public void setShop_cancel(String shop_cancel) {
		this.shop_cancel = shop_cancel;
	}

	public String getShop_desc() {
		return shop_desc;
	}

	public void setShop_desc(String shop_desc) {
		this.shop_desc = shop_desc;
	}
	
}
