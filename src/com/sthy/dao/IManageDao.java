package com.sthy.dao;

import java.util.List;
import java.util.Map;
import com.sthy.pojo.Faq;
import com.sthy.pojo.Language;
import com.sthy.pojo.Menu;
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

public interface IManageDao {

	User login(User user);
	
	void editPassword(User user);

	/**
	 * 查询用户的菜单权限
	 * 
	 * @param param
	 * @return
	 */
	List<Menu> queryMenuListByRole(Map<String, Object> param);
	
	List<Menu> queryMenuList(Map<String, Object> param);

	List<Language> queryLanguagePageList(Map<String, Object> param);

	List<Language> queryLanguageList(Map<String, Object> param);

	int queryLanguagePageListCount(Map<String, Object> param);

	void addLanguage(Language language);

	void editLanguage(Language language);

	void delLanguage(Language language);

	List<Slider> querySliderPageList(Map<String, Object> param);

	int querySliderPageListCount(Map<String, Object> param);

	List<Slider> querySliderList(Map<String, Object> param);

	void addSlider(Slider slider);

	void editSlider(Slider slider);

	void delSlider(Slider slider);

	List<Shop> queryShopPageList(Map<String, Object> param);

	int queryShopPageListCount(Map<String, Object> param);

	public List<Shop> queryShopList(Map<String, Object> param);

	void addShop(Shop shop);

	void editShop(Shop shop);

	void delShop(Shop shop);

	List<ShopDetail> queryShopDetailList(Map<String, Object> param);

	void addShopDetail(ShopDetail shopDetail);

	void editShopDetail(ShopDetail shopDetail);

	List<Traffic> queryTrafficList(Map<String, Object> param);

	void addTraffic(Traffic traffic);

	void editTraffic(Traffic traffic);

	List<Faq> queryFAQPageList(Map<String, Object> param);

	int queryFAQPageListCount(Map<String, Object> param);

	void addShopFAQ(Faq faq);

	void editShopFAQ(Faq faq);

	void delShopFAQ(Faq faq);

	List<Faq> queryFAQList(Map<String, Object> param);

	List<ShopImg> queryShopImgPageList(Map<String, Object> param);

	int queryShopImgPageListCount(Map<String, Object> param);

	void addShopImg(ShopImg shopImg);

	void editShopImg(ShopImg shopImg);

	void delShopImg(ShopImg shopImg);

	List<ShopImg> queryShopImgById(Map<String, Object> param);

	List<Recruit> queryRecruitPageList(Map<String, Object> param);

	int queryRecruitPageListCount(Map<String, Object> param);

	List<Recruit> queryRecruitList(Map<String, Object> param);

	void addRecruit(Recruit recruit);

	void editRecruit(Recruit recruit);

	void delRecruit(Recruit recruit);

	List<Sale> querySalePageList(Map<String, Object> param);

	int querySalePageListCount(Map<String, Object> param);

	List<Sale> querySaleList(Map<String, Object> param);

	void addSale(Sale sale);

	void editSale(Sale sale);

	void delSale(Sale sale);

	List<Travel> queryTravelPageList(Map<String, Object> param);

	int queryTravelPageListCount(Map<String, Object> param);

	List<Travel> queryTravelList(Map<String, Object> param);

	void addTravel(Travel travel);

	void editTravel(Travel travel);

	void delTravel(Travel travel);
	
	List<User> queryUserPageList(Map<String, Object> param);
	
	int queryUserPageListCount(Map<String, Object> param);
	
	List<User> queryUserList(Map<String, Object> param);
	
	void addUser(User user);
	
	void editUser(User user);
	
	void delUser(User user);
	
	List<Role> queryRoleList(Map<String, Object> param);
	
	List<Role> queryRolePageList(Map<String, Object> param);
	
	int queryRolePageListCount(Map<String, Object> param);
	
	void addRole(Role role);
	
	void editRole(Role role);
	
	void delRole(Role role);
	
	void addRoleMenuRec(Map<String, Object> param);
	
	void delRoleMenuRec(Role role);
}
