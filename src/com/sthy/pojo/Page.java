package com.sthy.pojo;

import com.sthy.base.BasePojo;

/**
 * 分页
 * @author Administrator
 *
 */
public class Page extends BasePojo {

	private static final long serialVersionUID = -2098875762848681971L;

	/**
	 * 当前页
	 */
	private int current = 1;
	
	/**
	 * 记录总数
	 */
	private int total = 0;
	
	/**
	 * 一页多少条记录
	 */
	private int pageSize = 10;
	
	/**
	 * 总页数
	 */
	private int pageTotal = 1;

	/**
	 * 数据库数据起始位置
	 * @return int
	 */
	public int getPageStart() {
		return (this.current - 1) * pageSize;
	}
	
	public int getCurrent() {
		return current;
	}

	public void setCurrent(int current) {
		this.current = current;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
		if (this.total == 0) {
			pageTotal = 1;
			return;
		}
		this.pageTotal = this.total / this.pageSize;
		if (this.total % this.pageSize != 0) {
			this.pageTotal++;
		}
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageTotal() {
		return pageTotal;
	}

	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}

}
