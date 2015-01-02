package com.sthy.pojo;

import java.util.List;

import com.sthy.base.BasePojo;

public class Role extends BasePojo{
	
	private static final long serialVersionUID = -6474408938664982349L;
	
	private List<Menu> menus;

	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}
}
