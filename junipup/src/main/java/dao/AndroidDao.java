package dao;

import java.util.List;

import model.AndroidBoard;

public interface AndroidDao {

	public int insertAndroid(AndroidBoard android);
	int total();
	List<AndroidBoard> listAndroid(AndroidBoard android);
	public AndroidBoard selectAndroid(String title);
	public void deleteAndroid(String title);
	public void insertBoard();
	public int updateAndroid(AndroidBoard android);
}
