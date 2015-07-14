package service;

import java.util.List;

import model.JavaBoard;
import model.Member;

public interface JavaService {
	public int javaInsert(JavaBoard java);
	int total();
	List<JavaBoard> listJava(JavaBoard java);
	JavaBoard javaDetail(int bnum);
	public void javaDelete(int bnum);
	public void insertBoard();
	public int javaUpdate(JavaBoard java);
	public int totalJavaCategory(String category);
	List<JavaBoard> listJavaCategory(JavaBoard java);
	void javaPointUp5(Member member);
}
