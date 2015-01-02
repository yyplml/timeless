package com.sthy.util;

import java.util.UUID;

public class UuidUtils {

	public static String getUUID() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}

	public static void main(String[] args) {
		System.out.println(0.05 + 0.01);
	}
}
