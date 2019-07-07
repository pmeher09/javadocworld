package com.javadw.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.javadw.dao.TrickyProgramsDao;
import com.javadw.model.TrickyPrograms;

@Service("trickyProgramsDao")
public class TrickyProgramsDaoImpl implements TrickyProgramsDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void save(TrickyPrograms trickyPrograms) {
		sessionFactory.openSession().save(trickyPrograms);
	}

	@Override
	public void update(TrickyPrograms trickyPrograms) {
		sessionFactory.getCurrentSession().update(trickyPrograms);
	}

	@Override
	public void delete(TrickyPrograms trickyPrograms) {
		sessionFactory.getCurrentSession().delete(trickyPrograms);
	}

	@Override
	@Transactional
	public List<TrickyPrograms> listAll() {
		return sessionFactory.getCurrentSession()
				.createCriteria(TrickyPrograms.class).list();
	}

	@Override
	public TrickyPrograms findByLink(String link) {
		return (TrickyPrograms) sessionFactory.getCurrentSession().get(TrickyPrograms.class, 2);
	}
	
	@Override
	@Transactional
	public TrickyPrograms findById(int id) {
		return (TrickyPrograms) sessionFactory.getCurrentSession().get(TrickyPrograms.class, id);
	}

	@Override
	@Transactional
	public int getLinkCount() {
		// TODO Auto-generated method stub
		return (int) sessionFactory.getCurrentSession()
				.createCriteria(TrickyPrograms.class)
				.setProjection(Projections.rowCount()).uniqueResult();
	}
	

}
