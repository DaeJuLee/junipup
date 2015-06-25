package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.JavaDao;
import model.JavaBoard;

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

	
	public JavaBoard javaDetail(String title) {
		return dao.javaDetail(title);
	}

	
	public void javaDelete(String title) {
		dao.javaDelete(title);
		
	}

	public void insertBoard() {
		dao.insertBoard();		
	}

	public int javaUpdate(JavaBoard java) {
		return dao.javaUpdate(java);
	}

}
