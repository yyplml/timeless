package com.sthy.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sthy.dao.IManageDao;
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
import com.sthy.service.IManageService;
import com.sthy.util.CONST;
import com.sthy.util.DateUtils;
import com.sthy.util.MD5Utils;

@Service("manageService")
public class ManageServiceImpl implements IManageService {

	@Autowired
	private IManageDao manageDao;

	@Override
	public boolean login(User user) {
		User info = manageDao.login(user);
		if (info != null
				&& info.getUsername().equals(user.getUsername())
				&& info.getPassword().equals(
						MD5Utils.encryption(user.getPassword()))) {
			user.setName(info.getName());
			user.setId(info.getId());
			user.setRole_id(info.getRole_id());
			if (StringUtils.isNotEmpty(info.getRole_id())) {
				Role role = new Role();
				role.setId(info.getRole_id());
				user.setRole(role);
				Map<String, Object> param = new HashMap<String, Object>();
				param.put("role_id", role.getId());
				role.setMenus(this.manageDao.queryMenuListByRole(param));
			}

			return true;
		}
		return false;
	}

	@Override
	public List<Language> queryLanguagePageList(Map<String, Object> param,
			Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Language> list = manageDao.queryLanguagePageList(param);
		int total = manageDao.queryLanguagePageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Language queryLanguageById(Map<String, Object> param) {
		List<Language> list = manageDao.queryLanguageList(param);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addLanguage(Language language) {
		manageDao.addLanguage(language);
	}

	@Override
	public void editLanguage(Language language) {
		manageDao.editLanguage(language);
	}

	@Override
	public void delLanguage(Language language) {
		manageDao.delLanguage(language);
	}

	@Override
	public List<Slider> querySliderPageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Slider> list = manageDao.querySliderPageList(param);
		int total = manageDao.querySliderPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Slider querySliderById(Map<String, Object> param) {
		List<Slider> list = manageDao.querySliderList(param);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addSlider(Slider slider) {
		manageDao.addSlider(slider);
	}

	@Override
	public void editSlider(Slider slider) {
		manageDao.editSlider(slider);
	}

	@Override
	public void delSlider(Slider slider) {
		manageDao.delSlider(slider);
	}

	@Override
	public List<Shop> queryShopPageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Shop> list = manageDao.queryShopPageList(param);
		int total = manageDao.queryShopPageListCount(param);
		page.setTotal(total);
		return list;
	}
	
	@Override
	public List<Shop> queryShopList(Map<String, Object> param) {
		return manageDao.queryShopList(param);
	}

	@Override
	public Shop queryShopById(Map<String, Object> param) {
		List<Shop> list = manageDao.queryShopList(param);
		if (list != null && list.size() > 0) {
			Shop shop = list.get(0);
			return shop;
		}
		return null;
	}
	
	@Transactional
	@Override
	public void addShop(Shop shop) {
		shop.setCreate_time(DateUtils.getNowTime());
		manageDao.addShop(shop);
		if (StringUtils.isNotEmpty(shop.getId())) {
			ShopDetail detail = new ShopDetail();
			detail.setShop_id(shop.getId());
			manageDao.addShopDetail(detail);
			Traffic traffic = new Traffic();
			traffic.setShop_id(shop.getId());
			manageDao.addTraffic(traffic);
		}
	}

	@Override
	public void editShop(Shop shop) {
		shop.setUpdate_time(DateUtils.getNowTime());
		manageDao.editShop(shop);
	}

	@Transactional
	@Override
	public void delShop(Shop shop) {
		manageDao.delShop(shop);
	}

	@Override
	public ShopDetail queryShopDetailByShopId(Map<String, Object> param) {
		List<ShopDetail> details = manageDao.queryShopDetailList(param);
		if (details != null && details.size() > 0) {
			return details.get(0);
		}
		return null;
	}

	@Override
	public Traffic queryTrafficByShopId(Map<String, Object> param) {
		List<Traffic> traffics = manageDao.queryTrafficList(param);
		if (traffics != null && traffics.size() > 0) {
			return traffics.get(0);
		}
		return null;
	}

	@Override
	public void editShopDetail(ShopDetail shopDetail) {
		manageDao.editShopDetail(shopDetail);

	}

	@Override
	public void editTraffic(Traffic traffic) {
		manageDao.editTraffic(traffic);
	}

	@Override
	public List<Faq> queryFAQPageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Faq> list = manageDao.queryFAQPageList(param);
		int total = manageDao.queryFAQPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public List<ShopImg> queryShopImgPageList(Map<String, Object> param,
			Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<ShopImg> list = manageDao.queryShopImgPageList(param);
		int total = manageDao.queryShopImgPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public void addShopImg(ShopImg shopImg) {
		manageDao.addShopImg(shopImg);
	}

	@Override
	public void editShopImg(ShopImg shopImg) {
		manageDao.editShopImg(shopImg);
	}

	@Override
	public void delShopImg(ShopImg shopImg) {
		manageDao.delShopImg(shopImg);
	}

	@Override
	public ShopImg queryShopImgById(Map<String, Object> param) {
		List<ShopImg> list = manageDao.queryShopImgById(param);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addShopFAQ(Faq faq) {
		manageDao.addShopFAQ(faq);
	}

	@Override
	public void editShopFAQ(Faq faq) {
		manageDao.editShopFAQ(faq);
	}

	@Override
	public void delShopFAQ(Faq faq) {
		manageDao.delShopFAQ(faq);
	}

	@Override
	public Faq queryFAQByShopId(Map<String, Object> param) {
		List<Faq> list = manageDao.queryFAQList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<Recruit> queryRecruitPageList(Map<String, Object> param,
			Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Recruit> list = manageDao.queryRecruitPageList(param);
		int total = manageDao.queryRecruitPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Recruit queryRecruitById(Map<String, Object> param) {
		List<Recruit> list = manageDao.queryRecruitList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addRecruit(Recruit recruit) {
		manageDao.addRecruit(recruit);
	}

	@Override
	public void editRecruit(Recruit recruit) {
		manageDao.editRecruit(recruit);
	}

	@Override
	public void delRecruit(Recruit recruit) {
		manageDao.delRecruit(recruit);
	}

	@Override
	public List<Sale> querySalePageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Sale> list = manageDao.querySalePageList(param);
		int total = manageDao.querySalePageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Sale querySaleById(Map<String, Object> param) {
		List<Sale> list = manageDao.querySaleList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addSale(Sale sale) {
		manageDao.addSale(sale);
	}

	@Override
	public void editSale(Sale sale) {
		manageDao.editSale(sale);
	}

	@Override
	public void delSale(Sale sale) {
		manageDao.delSale(sale);
	}

	@Override
	public List<Travel> queryTravelPageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Travel> list = manageDao.queryTravelPageList(param);
		int total = manageDao.queryTravelPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Travel queryTravelById(Map<String, Object> param) {
		List<Travel> list = manageDao.queryTravelList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addTravel(Travel travel) {
		manageDao.addTravel(travel);
		
	}

	@Override
	public void editTravel(Travel travel) {
		manageDao.editTravel(travel);
	}

	@Override
	public void delTravel(Travel travel) {
		manageDao.delTravel(travel);
	}

	@Override
	public List<User> queryUserPageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<User> list = manageDao.queryUserPageList(param);
		int total = manageDao.queryUserPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public User queryUserById(Map<String, Object> param) {
		List<User> list = manageDao.queryUserList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public void addUser(User user) {
		user.setPassword(MD5Utils.encryption(user.getNewPassword()));
		manageDao.addUser(user);
	}

	@Override
	public void editUser(User user) {
		if(!user.getPassword().equals(user.getNewPassword())) {
			user.setPassword(MD5Utils.encryption(user.getNewPassword()));
		}
		manageDao.editUser(user);
	}

	@Override
	public void delUser(User user) {
		manageDao.delUser(user);
	}

	@Override
	public List<Role> queryRoleList(Map<String, Object> param) {
		return manageDao.queryRoleList(param);
	}

	@Override
	public List<Role> queryRolePageList(Map<String, Object> param, Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Role> list = manageDao.queryRolePageList(param);
		int total = manageDao.queryRolePageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Role queryRoleById(Map<String, Object> param) {
		List<Role> list = manageDao.queryRoleList(param);
		if(list != null && list.size() > 0) {
			Role role = list.get(0);
			Map<String, Object> hashMap = new HashMap<String, Object>();
			hashMap.put("role_id", role.getId());
			role.setMenus(manageDao.queryMenuListByRole(hashMap));
			return role;
		}
		return null;
	}

	@Override
	@Transactional
	public void addRole(Role role) {
		manageDao.addRole(role);
		if(StringUtils.isNotEmpty(role.getId())) {
			Map<String, Object> param = new HashMap<String, Object>();
			for(Menu menu : role.getMenus()) {
				param.put("menu_id", menu.getId());
				param.put("role_id", role.getId());
				manageDao.addRoleMenuRec(param);
			}
		}
	}

	@Override
	@Transactional
	public void editRole(Role role) {
		manageDao.editRole(role);
		manageDao.delRoleMenuRec(role);
		Map<String, Object> param = new HashMap<String, Object>();
		for(Menu menu : role.getMenus()) {
			param.put("menu_id", menu.getId());
			param.put("role_id", role.getId());
			manageDao.addRoleMenuRec(param);
		}
	}

	@Override
	@Transactional
	public void delRole(Role role) {
		manageDao.delRoleMenuRec(role);
		manageDao.delRole(role);
	}

	@Override
	public List<Menu> queryMenuList(Map<String, Object> param) {
		return manageDao.queryMenuList(param);
	}

	@Override
	public void editPassword(User user) {
		manageDao.editPassword(user);
	}

}
