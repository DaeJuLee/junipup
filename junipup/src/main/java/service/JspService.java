package service;

import java.util.List;

import model.JspBoard;

public interface JspService {
	public int jspInsert(JspBoard jsp);
	int total();
	List<JspBoard> listJsp(JspBoard jsp);
	JspBoard jspDetail(String title);
	public void jspDelete(String title);
	public void insertBoard();
	public int jspUpdate(JspBoard jsp);
}
