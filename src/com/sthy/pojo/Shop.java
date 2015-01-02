package com.sthy.pojo;

import java.util.List;

import com.sthy.base.BasePojo;

/**
 * 店铺信息
 * 
 * @author Administrator
 * 
 */
public class Shop extends BasePojo {

	private static final long serialVersionUID = -2455931444619049522L;

	/**
	 * 图片组
	 */
	private List<ShopImg> imgs;

	private ShopDetail detail;

	private Traffic traffic;

	private List<Faq> faqs;

	private List<Travel> travels;

	private String status;

	private String url;

	public List<ShopImg> getImgs() {
		return imgs;
	}

	public void setImgs(List<ShopImg> imgs) {
		this.imgs = imgs;
	}

	public ShopDetail getDetail() {
		return detail;
	}

	public void setDetail(ShopDetail detail) {
		this.detail = detail;
	}

	public List<Faq> getFaqs() {
		return faqs;
	}

	public void setFaqs(List<Faq> faqs) {
		this.faqs = faqs;
	}

	public Traffic getTraffic() {
		return traffic;
	}

	public void setTraffic(Traffic traffic) {
		this.traffic = traffic;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public List<Travel> getTravels() {
		return travels;
	}

	public void setTravels(List<Travel> travels) {
		this.travels = travels;
	}

}
