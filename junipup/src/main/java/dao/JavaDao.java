package dao;

import java.util.List;

import model.JavaBoard;

public interface JavaDao {
	public int javaInsert(JavaBoard java);
	int total();
	List<JavaBoard> listJava(JavaBoard java);
	public JavaBoard javaDetail(int bnum);
	public void javaDelete(int bnum);
	public void insertBoard();
	public int javaUpdate(JavaBoard java);
}
