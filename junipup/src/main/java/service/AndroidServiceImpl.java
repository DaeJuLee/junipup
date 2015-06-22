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
	
	public int insert(AndroidBoard android) {
		return dao.insert(android);
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

}
