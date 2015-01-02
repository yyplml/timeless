package com.sthy.util;

import java.io.IOException;
import java.util.Properties;

public class PropertiesUtils {

	private static final String CONFIG_FILE = "/config/";

	public static String getValue(String key, String path) throws IOException {
		Properties properties = new Properties();
		properties.load(PropertiesUtils.class.getResourceAsStream(CONFIG_FILE
				+ path));
		Object value = properties.get(key);
		return value == null ? "" : value.toString();
	}
}
