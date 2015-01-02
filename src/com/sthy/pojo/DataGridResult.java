package com.sthy.pojo;

import com.sthy.base.BaseResult;

public class DataGridResult extends BaseResult {
	
	private int total = 0;
	
	private Object rows = null;

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Object getRows() {
		return rows;
	}

	public void setRows(Object rows) {
		this.rows = rows;
	}
}
