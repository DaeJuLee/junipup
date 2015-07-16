package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.JavaDao;
import model.JavaBoard;
import model.Member;

@Service
public class JavaServiceImpl implements JavaService{
	@Autowired
	JavaDao dao;
	
	public int javaInsert(JavaBoard java) {
		return dao.javaInsert(java);
	}
	
	public int total() {
		return dao.total();
	}

	public List<JavaBoard> listJava(JavaBoard java) {
		return dao.listJava(java);
	}

	
	public JavaBoard javaDetail(int bnum) {
		return dao.javaDetail(bnum);
	}

	
	public void javaDelete(int bnum) {
		dao.javaDelete(bnum);
		
	}

	public void insertBoard() {
		dao.insertBoard();		
	}

	public int javaUpdate(JavaBoard java) {
		return dao.javaUpdate(java);
	}

	@Override
	public int totalJavaCategory(String category) {
		return dao.totalJavaCategory(category);
	}

	@Override
	public List<JavaBoard> listJavaCategory(JavaBoard java) {
		return dao.listJavaCategory(java);
	}

	@Override
	public void javaPointUp5(Member member) {
		dao.javaPointUp5(member);
	}

	@Override
	public int HitsUpdate(int bnum) {
		return dao.HitsUpdate(bnum);
	}

}
