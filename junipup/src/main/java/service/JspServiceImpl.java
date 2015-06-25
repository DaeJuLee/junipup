package service;

import java.util.List;

import model.JspBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.JspDao;

@Service
public class JspServiceImpl implements JspService{
	@Autowired
	JspDao dao;

	public int jspInsert(JspBoard jsp) {
		return dao.jspInsert(jsp);
	}

	public int total() {
		return dao.total();
	}

	public List<JspBoard> listJsp(JspBoard jsp) {
		return dao.listJsp(jsp);
	}

	public JspBoard jspDetail(String title) {
		return dao.jspDetail(title);
	}

	public void jspDelete(String title) {
		dao.jspDelete(title);		
	}

	public void insertBoard() {
		dao.insertBoard();		
	}

	public int jspUpdate(JspBoard jsp) {
		return dao.jspUpdate(jsp);
	}
}
