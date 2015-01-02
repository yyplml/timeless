package com.sthy.dao;

import java.util.List;
import java.util.Map;

import com.sthy.pojo.Language;

public interface ILanguageDao {

	List<Language> queryLanguagsList(Map<String, Object> param);
}
