package service;

import java.util.List;

import model.AndroidBoard;
import model.Member;

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

	public AndroidBoard androidDetail(int bnum) {
		return dao.androidDetail(bnum);
	}

	public void androidDelete(int bnum) {
		dao.androidDelete(bnum);	
	}

	public void insertBoard() {
		dao.insertBoard();
	}

	@Override
	public int androidUpdate(AndroidBoard android) {
		return dao.androidUpdate(android);
	}

	@Override
	public List<AndroidBoard> listAndroidCategory(AndroidBoard android) {
		return dao.listAndroidCategory(android);
	}

	@Override
	public int totalAndroidCategory(String category) {
		return dao.totalAndroidCategory(category);
	}

	@Override
	public void androidPointUp5(Member member) {
		dao.androidPointUp5(member);
		
	}
	

}
