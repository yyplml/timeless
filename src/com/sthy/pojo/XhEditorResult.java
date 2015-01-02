package com.sthy.pojo;

import com.sthy.base.BaseResult;
import com.sthy.util.CONST;

public class XhEditorResult extends BaseResult {

	private String err = CONST.MSG.FAIL;
	
	private String msg;

	public String getErr() {
		return err;
	}

	public void setErr(String err) {
		this.err = err;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
}
