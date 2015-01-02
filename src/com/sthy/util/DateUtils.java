package com.sthy.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 时间操作类
 * 
 * @author Administrator
 * 
 */
public class DateUtils {

	private static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	
	private static SimpleDateFormat timeFormate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

	/**
	 * 获取当前时间
	 * 
	 * @return yyyy-MM-dd
	 */
	public static String getNowDate() {
		return format.format(new Date());
	}
	
	/**
	 * 获取当前时间
	 * @return yyyy-MM-dd hh:mm:ss
	 */
	public static String getNowTime() {
		return timeFormate.format(new Date());
	}
}
