package dao;

import java.util.List;

import model.AndroidBoard;

public interface AndroidDao {

	public int androidInsert(AndroidBoard android);
	int total();
	List<AndroidBoard> listAndroid(AndroidBoard android);
	public AndroidBoard androidDetail(String title);
	public void androidDelete(String title);
	public void insertBoard();
	public int androidUpdate(AndroidBoard android);
}
