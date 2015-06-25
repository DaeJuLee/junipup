package dao;

import java.util.List;
import model.JspBoard;

public interface JspDao {
	public int jspInsert(JspBoard jsp);
	int total();
	List<JspBoard> listJsp(JspBoard jsp);
	public JspBoard jspDetail(String title);
	public void jspDelete(String title);
	public void insertBoard();
	public int jspUpdate(JspBoard jsp);
}
