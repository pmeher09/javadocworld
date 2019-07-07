package com.javadw.dao;

import java.util.List;

import com.javadw.model.Articles;

public interface ArticlesDao {

	void save(Articles stock);

	void update(Articles stock);

	void delete(Articles stock);

	List<Articles> listAll();

	Articles findByLink(String link);

	Articles findById(int id);

	int getLinkCount();

}
