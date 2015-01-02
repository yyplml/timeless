package com.sthy.pojo;

import com.sthy.base.BasePojo;

public class Faq extends BasePojo {

	private static final long serialVersionUID = 136220433340472584L;

	private String q_content;
	
	private String a_content;

	private String shop_id;
	
	public String getQ_content() {
		return q_content;
	}

	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}

	public String getA_content() {
		return a_content;
	}

	public void setA_content(String a_content) {
		this.a_content = a_content;
	}

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}
}
