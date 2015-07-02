package service;

import java.util.List;

import model.AndroidBoard;

public interface AndroidService {

	public int androidInsert(AndroidBoard android);
	int total();
	List<AndroidBoard> listAndroid(AndroidBoard android);
	AndroidBoard androidDetail(int bnum);
	public void androidDelete(int bnum);
	public void insertBoard();
	public int androidUpdate(AndroidBoard android);
	
	List<AndroidBoard> listAndroidCategory(AndroidBoard android);
	int totalAndroidCategory(String category);
	
}
