package service;

import java.util.List;

import model.AndroidBoard;

public interface AndroidService {

	public int insert(AndroidBoard android);
	int total();
	List<AndroidBoard> listAndroid(AndroidBoard android);
	AndroidBoard selectAndroid(String title);
}
