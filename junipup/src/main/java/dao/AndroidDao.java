package dao;

import java.util.List;

import model.AndroidBoard;

public interface AndroidDao {

	public int insert(AndroidBoard android);
	int total();
	List<AndroidBoard> listAndroid(AndroidBoard android);
	public AndroidBoard selectAndroid(String title);
}
