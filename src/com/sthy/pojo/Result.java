package com.sthy.pojo;

import com.sthy.base.BaseResult;
import com.sthy.util.CONST;

/**
 * 异步请求返回体
 * 
 * @author Administrator
 * 
 */
public class Result extends BaseResult {

	private boolean code = false;
	
	private String message = CONST.MSG.FAIL;
	
	private Object data;
	
	public Result() {
		
	}
	
	public Result(boolean code) {
		this.code = code;
	}

	public boolean getCode() {
		return code;
	}

	public void setCode(boolean code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
}
