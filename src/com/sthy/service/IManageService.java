package com.sthy.service;

import java.util.List;
import java.util.Map;

import com.sthy.pojo.Faq;
import com.sthy.pojo.Language;
import com.sthy.pojo.Menu;
import com.sthy.pojo.Page;
import com.sthy.pojo.Recruit;
import com.sthy.pojo.Role;
import com.sthy.pojo.Sale;
import com.sthy.pojo.Shop;
import com.sthy.pojo.ShopDetail;
import com.sthy.pojo.ShopImg;
import com.sthy.pojo.Slider;
import com.sthy.pojo.Traffic;
import com.sthy.pojo.Travel;
import com.sthy.pojo.User;

/**
 * 后台管理Service接口
 * 
 * @author Administrator
 * 
 */
public interface IManageService {

	boolean login(User user);
	
	void editPassword(User user);
	
	List<Language> queryLanguagePageList(Map<String, Object> param,Page page);
	
	Language queryLanguageById(Map<String, Object> param);
	
	void addLanguage(Language language);
	
	void editLanguage(Language language);
	
	void delLanguage(Language language);
	
	List<Slider> querySliderPageList(Map<String, Object> param,Page page);
	
	Slider querySliderById(Map<String, Object> param);
	
	void addSlider(Slider slider);
	
	void editSlider(Slider slider);
	
	void delSlider(Slider slider);

	List<Shop> queryShopPageList(Map<String, Object> param,Page page);
	
	List<Shop> queryShopList(Map<String, Object> param);
	
	Shop queryShopById(Map<String, Object> param);
	
	void addShop(Shop shop);
	
	void editShop(Shop shop);
	
	void delShop(Shop shop);
	
	ShopDetail queryShopDetailByShopId(Map<String, Object> param);
	
	Traffic queryTrafficByShopId(Map<String, Object> param);
	
	void editShopDetail(ShopDetail shopDetail);
	
	void editTraffic(Traffic traffic);
	
	List<Faq> queryFAQPageList(Map<String, Object> param, Page page);
	
	void addShopFAQ(Faq faq);
	
	void editShopFAQ(Faq faq);
	
	void delShopFAQ(Faq faq);
	
	Faq queryFAQByShopId(Map<String, Object> param);

	List<ShopImg> queryShopImgPageList(Map<String, Object> param,Page page);
	
	void addShopImg(ShopImg shopImg);

	void editShopImg(ShopImg shopImg);
	
	void delShopImg(ShopImg shopImg);
	
	ShopImg queryShopImgById(Map<String, Object> param);
	
	List<Recruit> queryRecruitPageList(Map<String, Object> param, Page page);
	
	Recruit queryRecruitById(Map<String, Object> param);
	
	void addRecruit(Recruit recruit);
	
	void editRecruit(Recruit recruit);
	
	void delRecruit(Recruit recruit);
	
	List<Sale> querySalePageList(Map<String, Object> param, Page page);
	
	Sale querySaleById(Map<String, Object> param);
	
	void addSale(Sale sale);
	
	void editSale(Sale sale);
	
	void delSale(Sale sale);
	
	List<Travel> queryTravelPageList(Map<String, Object> param, Page page);
	
	Travel queryTravelById(Map<String, Object> param);
	
	void addTravel(Travel travel);
	
	void editTravel(Travel travel);
	
	void delTravel(Travel travel);
	
	List<User> queryUserPageList(Map<String, Object> param, Page page);
	
	User queryUserById(Map<String, Object> param);
	
	void addUser(User user);
	
	void editUser(User user);
	
	void delUser(User user);
	
	List<Role> queryRoleList(Map<String, Object> param);
	
	List<Role> queryRolePageList(Map<String, Object> param, Page page);
	
	Role queryRoleById(Map<String, Object> param);
	
	void addRole(Role role);
	
	void editRole(Role role);
	
	void delRole(Role role);
	
	List<Menu> queryMenuList(Map<String, Object> param);
}
