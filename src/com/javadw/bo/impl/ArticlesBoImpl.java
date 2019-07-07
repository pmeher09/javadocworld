package com.javadw.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javadw.bo.ArticlesBo;
import com.javadw.dao.ArticlesDao;
import com.javadw.model.Articles;
import com.javadw.util.NavigationRecordsUtil;

@Service("articlesBo")
public class ArticlesBoImpl implements ArticlesBo {

	@Autowired
	ArticlesDao articlesDao;

	public void setTrickyProgramsDao(ArticlesDao obj) {
		this.articlesDao = obj;
	}

	@Override
	public void save(Articles trickyPrograms) {
		articlesDao.save(trickyPrograms);

		//Update the TrickyLink count variable
		int totalTlinks = getLinkCount();
		System.out.println("TotalTLinks : " + totalTlinks);
		NavigationRecordsUtil.totalTLinks = totalTlinks;
	}

	@Override
	public void update(Articles trickyPrograms) {
		articlesDao.update(trickyPrograms);
	}

	@Override
	public void delete(Articles trickyPrograms) {
		articlesDao.delete(trickyPrograms);
	}

	@Override
	public List<Articles> listAll() {
		return articlesDao.listAll();
	}

	@Override
	public Articles findByLink(String link) {
		return articlesDao.findByLink(link);
	}
	
	@Override
	public Articles findById(int id) {
		return articlesDao.findById(id);
	}

	@Override
	public int getLinkCount() {
		return articlesDao.getLinkCount();
	}

}
