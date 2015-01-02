package com.sthy.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sthy.dao.ILanguageDao;
import com.sthy.pojo.Language;
import com.sthy.service.ILanguageService;

@Service("languageService")
public class LanguageServiceImpl implements ILanguageService {

	@Autowired
	private ILanguageDao languageDao;
	
	@Override
	public List<Language> queryLanguagsList(Map<String, Object> param) {
		return languageDao.queryLanguagsList(param);
	}

}
