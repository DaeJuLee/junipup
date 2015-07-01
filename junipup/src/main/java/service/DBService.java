package service;

import java.util.List;

import model.DBBoard;

public interface DBService {
	public int DBInsert(DBBoard db);
	int total();
	List<DBBoard> listDB(DBBoard db);
	DBBoard DBDetail(int bnum);
	public void DBDelete(int bnum);
	public void insertBoard();
	public int DBUpdate(DBBoard db);
	public int totalDBCategory(String category);
	List<DBBoard> listDBCategory(DBBoard db);
}
