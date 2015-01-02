package com.sthy.service;

import java.util.List;
import java.util.Map;

import com.sthy.pojo.Language;

public interface ILanguageService {

	List<Language> queryLanguagsList(Map<String, Object> param);
}
