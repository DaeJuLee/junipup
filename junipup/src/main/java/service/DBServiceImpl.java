package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.DBDao;
import model.DBBoard;

@Service
public class DBServiceImpl implements DBService{

	@Autowired
	DBDao dao;
	
	public int DBInsert(DBBoard db) {
		return dao.DBInsert(db);	
	}

	
	public int total() {
		return dao.total();
	}

	public List<DBBoard> listDB(DBBoard db) {
		
		return dao.listDB(db);
	}

	@Override
	public DBBoard DBDetail(int bnum) {
		
		return dao.DBDetail(bnum);
	}

	@Override
	public void DBDelete(int bnum) {
		dao.DBDelete(bnum);
		
	}

	@Override
	public void insertBoard() {
		dao.insertBoard();
		
	}

	@Override
	public int DBUpdate(DBBoard db) {
	
		return dao.DBUpdate(db);
	}


	@Override
	public int totalDBCategory(String category) {
		
		return dao.totalDBCategory(category);
	}


	@Override
	public List<DBBoard> listDBCategory(DBBoard db) {
		return dao.listDBCategory(db);
	}


	

}
