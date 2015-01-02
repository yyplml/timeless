package com.sthy.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {

	// 全局数组
	private final static String[] strDigits = { "0", "1", "2", "3", "4", "5",
			"6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };

	/**
	 * MD5加密
	 * 
	 * @param object
	 *            原文
	 * @return 密文
	 */
	public static String encryption(Object object) {
		if (object != null && !"".equals(object)) {
			try {
				String resultString = object.toString();
				MessageDigest md;
				md = MessageDigest.getInstance("MD5");
				// md.digest() 该函数返回值为存放哈希值结果的byte数组
				resultString = byteToString(md.digest(resultString.getBytes()));
				return resultString;
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}
		return "";
	}

	// 转换字节数组为16进制字串
	private static String byteToString(byte[] bByte) {
		StringBuffer sBuffer = new StringBuffer();
		for (int i = 0; i < bByte.length; i++) {
			sBuffer.append(byteToArrayString(bByte[i]));
		}
		return sBuffer.toString();
	}

	// 返回形式为数字跟字符串
	private static String byteToArrayString(byte bByte) {
		int iRet = bByte;
		if (iRet < 0) {
			iRet += 256;
		}
		int iD1 = iRet / 16;
		int iD2 = iRet % 16;
		return strDigits[iD1] + strDigits[iD2];
	}
}
