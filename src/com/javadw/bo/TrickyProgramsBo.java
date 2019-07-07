package com.javadw.bo;

import java.util.List;

import com.javadw.model.TrickyPrograms;

public interface TrickyProgramsBo {

	void save(TrickyPrograms stock);

	void update(TrickyPrograms stock);

	void delete(TrickyPrograms stock);

	List<TrickyPrograms> listAll();

	TrickyPrograms findByLink(String link);

	TrickyPrograms findById(int id);

	int getLinkCount();

}
