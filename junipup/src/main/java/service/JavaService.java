package service;

import java.util.List;

import model.JavaBoard;

public interface JavaService {
	public int javaInsert(JavaBoard java);
	int total();
	List<JavaBoard> listJava(JavaBoard java);
	JavaBoard javaDetail(String title);
	public void javaDelete(String title);
	public void insertBoard();
	public int javaUpdate(JavaBoard java);
}
