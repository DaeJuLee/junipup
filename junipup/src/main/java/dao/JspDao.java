package dao;

import java.util.List;

import model.JspBoard;
import model.Member;

public interface JspDao {
	public int jspInsert(JspBoard jsp);
	int total();
	List<JspBoard> listJsp(JspBoard jsp);
	public JspBoard jspDetail(int bnum);
	public void jspDelete(int bnum);
	public void insertBoard();
	public int jspUpdate(JspBoard jsp);
	public int totalJspCategory(String category);
	List<JspBoard> listJspCategory(JspBoard db);
	void jspPointUp5(Member member);
	Member selectNickname(String nickname);
	public int HitsUpdate(int bnum);
}
