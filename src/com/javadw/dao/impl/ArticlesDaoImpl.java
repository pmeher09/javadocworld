package com.javadw.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javadw.dao.ArticlesDao;
import com.javadw.model.Articles;

@Service("articlesDao")
public class ArticlesDaoImpl implements ArticlesDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void save(Articles trickyPrograms) {
		sessionFactory.openSession().save(trickyPrograms);
	}

	@Override
	public void update(Articles trickyPrograms) {
		sessionFactory.getCurrentSession().update(trickyPrograms);
	}

	@Override
	public void delete(Articles trickyPrograms) {
		sessionFactory.getCurrentSession().delete(trickyPrograms);
	}

	@Override
	@Transactional
	public List<Articles> listAll() {
		return sessionFactory.getCurrentSession()
				.createCriteria(Articles.class).addOrder(Order.desc("id")).list();
	}

	@Override
	public Articles findByLink(String link) {
		return (Articles) sessionFactory.getCurrentSession().get(Articles.class, 2);
	}
	
	@Override
	@Transactional
	public Articles findById(int id) {
		return (Articles) sessionFactory.getCurrentSession().get(Articles.class, id);
	}

	@Override
	@Transactional
	public int getLinkCount() {
		// TODO Auto-generated method stub
		return (int) sessionFactory.getCurrentSession()
				.createCriteria(Articles.class)
				.setProjection(Projections.rowCount()).uniqueResult();
	}
	

}
