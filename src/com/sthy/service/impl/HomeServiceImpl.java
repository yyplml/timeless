package com.sthy.service.impl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sthy.dao.IHomeDao;
import com.sthy.pojo.Page;
import com.sthy.pojo.Recruit;
import com.sthy.pojo.Sale;
import com.sthy.pojo.Shop;
import com.sthy.pojo.ShopDetail;
import com.sthy.pojo.Slider;
import com.sthy.pojo.Traffic;
import com.sthy.pojo.Travel;
import com.sthy.service.IHomeService;
import com.sthy.util.CONST;

@Service("homeService")
public class HomeServiceImpl implements IHomeService {

	@Autowired
	private IHomeDao homeDao;

	@Override
	public List<Slider> querySliderList(Map<String, Object> param) {
		return homeDao.querySliderList(param);
	}

	@Override
	public List<Shop> queryShopList(Map<String, Object> param) {
		List<Shop> list = homeDao.queryShopList(param);
		if(list != null && list.size() > 0) {
			for(Shop shop : list) {
				param.put("shop_id", shop.getId());
				shop.setImgs(homeDao.queryShopImgByShopId(param));
				List<ShopDetail> details = homeDao.queryShopDetailByShopId(param);
				if(details != null && details.size() > 0) {
					shop.setDetail(details.get(0));
				}
			}
		}
		return list;
	}

	@Override
	public List<Traffic> queryTrafficList(Map<String, Object> param) {
		return homeDao.queryTrafficList(param);
	}

	@Override
	public List<Shop> queryShopFaqList(Map<String, Object> param) {
		List<Shop> list = homeDao.queryShopList(param);
		if(list != null && list.size() > 0) {
			for(Shop shop : list) {
				param.put("shop_id", shop.getId());
				shop.setFaqs(homeDao.queryFaqList(param));
			}
		}
		return list;
	}

	@Override
	public List<Recruit> queryRecruitPageList(Map<String, Object> param,
			Page page) {
		param.put(CONST.BASE.PAGE, page);
		List<Recruit> list = homeDao.queryRecruitPageList(param);
		int total = homeDao.queryRecruitPageListCount(param);
		page.setTotal(total);
		return list;
	}

	@Override
	public Recruit queryRecruitById(Map<String, Object> param) {
		List<Recruit> list = homeDao.queryRecruitList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public Sale querySaleById(Map<String, Object> param) {
		List<Sale> list = homeDao.querySaleList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<Recruit> queryRecruitList(Map<String, Object> param) {
		return homeDao.queryRecruitList(param);
	}

	@Override
	public List<Sale> querySaleList(Map<String, Object> param) {
		return homeDao.querySaleList(param);
	}

	@Override
	public List<Shop> queryTravelList(Map<String, Object> param) {
		List<Shop> list = homeDao.queryShopList(param);
		if(list != null && list.size() > 0) {
			for(Shop shop : list) {
				param.put("shop_id", shop.getId());
				shop.setTravels(homeDao.queryTravelList(param));
			}
		}
		return list;
	}

	@Override
	public Travel queryTravelById(Map<String, Object> param) {
		List<Travel> list = homeDao.queryTravelList(param);
		if(list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

}
