package dao;

import java.util.List;

import model.JQueryBoard;

public interface JQueryDao {
	List<JQueryBoard> listJQuery(JQueryBoard jQueryboard);
	int JQueryInsert(JQueryBoard jquery);
	JQueryBoard JQueryDetail(int bnum);
	int jQueryUpdate(JQueryBoard jquery);
	int JQueryDelete(int bnum);
	int JQueryTotal();
}
