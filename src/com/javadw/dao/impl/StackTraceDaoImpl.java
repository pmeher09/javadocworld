package com.javadw.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javadw.dao.StackTraceDao;
import com.javadw.model.StackTrace;

@Service("stackTraceDao")
public class StackTraceDaoImpl implements StackTraceDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void save(StackTrace trickyPrograms) {
		sessionFactory.openSession().save(trickyPrograms);
	}

	@Override
	public void update(StackTrace trickyPrograms) {
		sessionFactory.getCurrentSession().update(trickyPrograms);
	}

	@Override
	public void delete(StackTrace trickyPrograms) {
		sessionFactory.getCurrentSession().delete(trickyPrograms);
	}

	@Override
	@Transactional
	public List<StackTrace> listAll() {
		return sessionFactory.getCurrentSession()
				.createCriteria(StackTrace.class).addOrder(Order.desc("id")).list();
	}

	@Override
	public StackTrace findByLink(String link) {
		return (StackTrace) sessionFactory.getCurrentSession().get(StackTrace.class, 2);
	}
	
	@Override
	@Transactional
	public StackTrace findById(int id) {
		return (StackTrace) sessionFactory.getCurrentSession().get(StackTrace.class, id);
	}

	@Override
	@Transactional
	public int getLinkCount() {
		// TODO Auto-generated method stub
		return (int) sessionFactory.getCurrentSession()
				.createCriteria(StackTrace.class)
				.setProjection(Projections.rowCount()).uniqueResult();
	}
	

}
