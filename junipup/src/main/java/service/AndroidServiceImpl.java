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
	
	public int androidInsert(AndroidBoard android) {
		return dao.androidInsert(android);
	}

	public int total() {
		return dao.total();
	}

	public List<AndroidBoard> listAndroid(AndroidBoard android) {
		return dao.listAndroid(android);
	}

	public AndroidBoard androidDetail(String title) {
		return dao.androidDetail(title);
	}

	public void androidDelete(String title) {
		dao.androidDelete(title);	
	}

	public void insertBoard() {
		dao.insertBoard();
	}

	@Override
	public int androidUpdate(AndroidBoard android) {
		return dao.androidUpdate(android);
	}
	

}
