package dao;

import java.util.List;

import model.DBBoard;
import model.Member;


public interface DBDao {
	public int DBInsert(DBBoard db);
	int total();
	List<DBBoard> listDB(DBBoard db);
	public DBBoard DBDetail(int bnum);
	public void DBDelete(int bnum);
	public void insertBoard();
	public int DBUpdate(DBBoard db);
	public int totalDBCategory(String category);
	List<DBBoard> listDBCategory(DBBoard db);
	void DBPointUp5(Member member);
	public int HitsUpdate(int bnum);
}
