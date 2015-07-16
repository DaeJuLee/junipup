package dao;

import java.util.List;

import model.JQueryBoard;
import model.Member;

public interface JQueryDao {
	List<JQueryBoard> listJQuery(JQueryBoard jQueryboard);
	int JQueryInsert(JQueryBoard jquery);
	JQueryBoard JQueryDetail(int bnum);
	int jQueryUpdate(JQueryBoard jquery);
	int JQueryDelete(int bnum);
	int JQueryTotal();
	public void insertBoard();
	
	List<JQueryBoard> listJQueryCategory(JQueryBoard JQueryboard);
	public int totalJQueryCategory(String category);
	void jQueryPointUp5(Member member);
	Member selectNickname(String nickname);
	public int HitsUpdate(int bnum);
}
