package service;

import java.util.List;

import model.JspBoard;
import model.Member;

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

	public JspBoard jspDetail(int bnum) {
		return dao.jspDetail(bnum);
	}

	public void jspDelete(int bnum) {
		dao.jspDelete(bnum);		
	}

	public void insertBoard() {
		dao.insertBoard();		
	}

	public int jspUpdate(JspBoard jsp) {
		return dao.jspUpdate(jsp);
	}

	public int totalJspCategory(String category) {
		return dao.totalJspCategory(category);
	}

	public List<JspBoard> listJspCategory(JspBoard jsp) {
		return dao.listJspCategory(jsp);
	}

	@Override
	public void jspPointUp5(Member member) {
		dao.jspPointUp5(member);
		
	}

	@Override
	public int HitsUpdate(int bnum) {
		return dao.HitsUpdate(bnum);
	
	}

}
