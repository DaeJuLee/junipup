package service;

import java.util.List;

import model.DBBoard;

public interface DBService {
	public int DBInsert(DBBoard db);
	int total();
	List<DBBoard> listDB(DBBoard db);
	DBBoard DBDetail(String title);
	public void DBDelete(String title);
	public void insertBoard();
	public int DBUpdate(DBBoard db);
}
