package com.javadw.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javadw.bo.TrickyProgramsBo;
import com.javadw.dao.TrickyProgramsDao;
import com.javadw.model.TrickyPrograms;
import com.javadw.util.NavigationRecordsUtil;

@Service("trickyProgramsBo")
public class TrickyProgramsBoImpl implements TrickyProgramsBo {

	@Autowired
	TrickyProgramsDao trickyProgramsDao;

	public void setTrickyProgramsDao(TrickyProgramsDao trickyProgramsDao) {
		this.trickyProgramsDao = trickyProgramsDao;
	}

	@Override
	public void save(TrickyPrograms trickyPrograms) {
		trickyProgramsDao.save(trickyPrograms);

		//Update the TrickyLink count variable
		int totalTlinks = getLinkCount();
		System.out.println("TotalTLinks : " + totalTlinks);
		NavigationRecordsUtil.totalTLinks = totalTlinks;
	}

	@Override
	public void update(TrickyPrograms trickyPrograms) {
		trickyProgramsDao.update(trickyPrograms);
	}

	@Override
	public void delete(TrickyPrograms trickyPrograms) {
		trickyProgramsDao.delete(trickyPrograms);
	}

	@Override
	public List<TrickyPrograms> listAll() {
		return trickyProgramsDao.listAll();
	}

	@Override
	public TrickyPrograms findByLink(String link) {
		return trickyProgramsDao.findByLink(link);
	}
	
	@Override
	public TrickyPrograms findById(int id) {
		return trickyProgramsDao.findById(id);
	}

	@Override
	public int getLinkCount() {
		return trickyProgramsDao.getLinkCount();
	}

}
