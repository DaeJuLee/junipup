package service;

import java.util.List;

import model.AndroidBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AndroidDao;

@Service
public class AndroidServiceImpl implements AndroidService{

	@Autowired
	AndroidDao dao;
	
	public int insertAndroid(AndroidBoard android) {
		return dao.insertAndroid(android);
	}

	public int total() {
		return dao.total();
	}

	public List<AndroidBoard> listAndroid(AndroidBoard android) {
		return dao.listAndroid(android);
	}

	public AndroidBoard selectAndroid(String title) {
		return dao.selectAndroid(title);
	}

	public void deleteAndroid(String title) {
		dao.deleteAndroid(title);	
	}

	public void insertBoard() {
		dao.insertBoard();
	}

	@Override
	public int updateAndroid(AndroidBoard android) {
		return dao.updateAndroid(android);
	}
	

}
