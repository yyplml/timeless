package com.sthy.util;

import java.util.Locale;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.support.AbstractMessageSource;

public class MessageUtils {

	public static AbstractMessageSource messageSource;

	public static String format(String code, Locale locale, Object... args) {
		String msg = messageSource.getMessage(code, args, locale);
		if (StringUtils.isEmpty(msg)) {
			return code;
		} else {
			return msg;
		}
	}
	
	public static String format(String code,Object... args) {
		String msg = messageSource.getMessage(code, args,  Locale.getDefault());
		if (StringUtils.isEmpty(msg)) {
			return code;
		} else {
			return msg;
		}
	}

	public final static void setMessageSource(AbstractMessageSource ms) {
		messageSource = ms;
	}
}
