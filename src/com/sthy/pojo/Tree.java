package com.sthy.pojo;

import java.util.List;

public class Tree {

	private String id;
	
	private String text;
	
	private boolean checked;
	
	private String state;
	
	private String iconCls = "";
	
	private List<Tree> childrens;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}

	public List<Tree> getChildrens() {
		return childrens;
	}

	public void setChildrens(List<Tree> childrens) {
		this.childrens = childrens;
	}
}
