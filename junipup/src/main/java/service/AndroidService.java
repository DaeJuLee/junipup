package service;

import java.util.List;

import model.AndroidBoard;

public interface AndroidService {

	public int androidInsert(AndroidBoard android);
	int total();
	List<AndroidBoard> listAndroid(AndroidBoard android);
	AndroidBoard androidDetail(String title);
	public void androidDelete(String title);
	public void insertBoard();
	public int androidUpdate(AndroidBoard android);
}
