package com.javadw.dao;

import java.util.List;

import com.javadw.model.TrickyPrograms;

public interface TrickyProgramsDao {

	void save(TrickyPrograms stock);

	void update(TrickyPrograms stock);

	void delete(TrickyPrograms stock);

	List<TrickyPrograms> listAll();

	TrickyPrograms findByLink(String link);

	TrickyPrograms findById(int id);

	int getLinkCount();

}
