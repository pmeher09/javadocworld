package com.javadw.dao;

import java.util.List;

import com.javadw.model.StackTrace;

public interface StackTraceDao {

	void save(StackTrace stock);

	void update(StackTrace stock);

	void delete(StackTrace stock);

	List<StackTrace> listAll();

	StackTrace findByLink(String link);

	StackTrace findById(int id);

	int getLinkCount();

}
