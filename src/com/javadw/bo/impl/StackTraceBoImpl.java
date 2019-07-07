package com.javadw.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javadw.bo.StackTraceBo;
import com.javadw.bo.TrickyProgramsBo;
import com.javadw.dao.StackTraceDao;
import com.javadw.dao.TrickyProgramsDao;
import com.javadw.model.StackTrace;
import com.javadw.model.TrickyPrograms;
import com.javadw.util.NavigationRecordsUtil;

@Service("stackTraceBo")
public class StackTraceBoImpl implements StackTraceBo {

	@Autowired
	StackTraceDao stackTraceDao;

	public void setTrickyProgramsDao(StackTraceDao trickyProgramsDao) {
		this.stackTraceDao = trickyProgramsDao;
	}

	@Override
	public void save(StackTrace trickyPrograms) {
		stackTraceDao.save(trickyPrograms);

		//Update the TrickyLink count variable
		int totalTlinks = getLinkCount();
		System.out.println("TotalTLinks : " + totalTlinks);
		NavigationRecordsUtil.totalTLinks = totalTlinks;
	}

	@Override
	public void update(StackTrace trickyPrograms) {
		stackTraceDao.update(trickyPrograms);
	}

	@Override
	public void delete(StackTrace trickyPrograms) {
		stackTraceDao.delete(trickyPrograms);
	}

	@Override
	public List<StackTrace> listAll() {
		return stackTraceDao.listAll();
	}

	@Override
	public StackTrace findByLink(String link) {
		return stackTraceDao.findByLink(link);
	}
	
	@Override
	public StackTrace findById(int id) {
		return stackTraceDao.findById(id);
	}

	@Override
	public int getLinkCount() {
		return stackTraceDao.getLinkCount();
	}

}
