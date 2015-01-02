package com.sthy.dao;

import java.util.List;
import java.util.Map;

import com.sthy.pojo.Faq;
import com.sthy.pojo.Recruit;
import com.sthy.pojo.Sale;
import com.sthy.pojo.Shop;
import com.sthy.pojo.ShopDetail;
import com.sthy.pojo.ShopImg;
import com.sthy.pojo.Slider;
import com.sthy.pojo.Traffic;
import com.sthy.pojo.Travel;

public interface IHomeDao {

	public List<Slider> querySliderList(Map<String, Object> param);

	public List<Shop> queryShopList(Map<String, Object> param);

	public List<ShopImg> queryShopImgByShopId(Map<String, Object> param);

	public List<ShopDetail> queryShopDetailByShopId(Map<String, Object> param);

	public List<Traffic> queryTrafficList(Map<String, Object> param);

	public List<Faq> queryFaqList(Map<String, Object> param);

	public List<Recruit> queryRecruitPageList(Map<String, Object> param);

	public int queryRecruitPageListCount(Map<String, Object> param);

	public List<Recruit> queryRecruitList(Map<String, Object> param);

	public List<Sale> querySaleList(Map<String, Object> param);

	public List<Travel> queryTravelList(Map<String, Object> param);
}
