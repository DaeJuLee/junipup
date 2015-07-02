package service;

import java.util.List;
import model.JQueryBoard;

public interface JQueryService {
	List<JQueryBoard> listJQuery(JQueryBoard jQueryboard);
	int JQueryInsert(JQueryBoard jquery);
	JQueryBoard JQueryDetail(int bnum);
	int JQueryUpdate(JQueryBoard jquery);
	int JQueryDelete(int bnum);
	int JQueryTotal();
	public void insertBoard();
	
	List<JQueryBoard> listJQueryCategory(JQueryBoard JQueryboard);
	int totalJQueryCategory(String category);
}
