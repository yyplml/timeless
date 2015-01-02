package com.sthy.service;

import java.util.List;
import java.util.Map;
import com.sthy.pojo.Page;
import com.sthy.pojo.Recruit;
import com.sthy.pojo.Sale;
import com.sthy.pojo.Shop;
import com.sthy.pojo.Slider;
import com.sthy.pojo.Traffic;
import com.sthy.pojo.Travel;

public interface IHomeService {

	/**
	 * 查询首页滚动列表
	 * 
	 * @param param
	 * @return
	 */
	List<Slider> querySliderList(Map<String, Object> param);

	/**
	 * 查询店铺列表
	 * 
	 * @param param
	 * @return
	 */
	List<Shop> queryShopList(Map<String, Object> param);

	/**
	 * 查询交通信息列表
	 * 
	 * @param param
	 * @return
	 */
	List<Traffic> queryTrafficList(Map<String, Object> param);

	/**
	 * 查询常见问题列表
	 * 
	 * @param param
	 * @return
	 */
	List<Shop> queryShopFaqList(Map<String, Object> param);

	/**
	 * 查询招聘信息分页列表
	 * 
	 * @param param
	 * @param page
	 * @return
	 */
	List<Recruit> queryRecruitPageList(Map<String, Object> param, Page page);

	/**
	 * 查询招聘信息列表
	 * 
	 * @param param
	 * @return
	 */
	List<Recruit> queryRecruitList(Map<String, Object> param);

	/**
	 * 查询单个招聘信息
	 * 
	 * @param param
	 * @return
	 */
	Recruit queryRecruitById(Map<String, Object> param);

	/**
	 * 查询优惠信息列表
	 * 
	 * @param param
	 * @return
	 */
	List<Sale> querySaleList(Map<String, Object> param);

	/**
	 * 查询单个优惠信息
	 * 
	 * @param param
	 * @return
	 */
	Sale querySaleById(Map<String, Object> param);

	/**
	 * 查询旅游信息列表，根据店铺分组
	 * 
	 * @param param
	 * @return
	 */
	List<Shop> queryTravelList(Map<String, Object> param);

	/**
	 * 查询单个旅游信息
	 * 
	 * @param param
	 * @return
	 */
	Travel queryTravelById(Map<String, Object> param);
}
