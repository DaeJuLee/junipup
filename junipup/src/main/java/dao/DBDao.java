package dao;

import java.util.List;
import model.DBBoard;


public interface DBDao {
	public int DBInsert(DBBoard db);
	int total();
	List<DBBoard> listDB(DBBoard db);
	public DBBoard DBDetail(String title);
	public void DBDelete(String title);
	public void insertBoard();
	public int DBUpdate(DBBoard db);
	public int totalDBCategory(String category);
	List<DBBoard> listDBCategory(DBBoard db);
	
}
