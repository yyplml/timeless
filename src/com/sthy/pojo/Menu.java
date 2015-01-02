package com.sthy.pojo;

import com.sthy.base.BasePojo;

/**
 * 菜单实体类
 * 
 * @author Administrator
 * 
 */
public class Menu extends BasePojo {

	private static final long serialVersionUID = 5408651565966504773L;

	private String path;
	
	private String num;

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

}
