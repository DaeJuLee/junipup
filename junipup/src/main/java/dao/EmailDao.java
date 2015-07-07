package dao;

import java.util.List;

import model.Email;


	//카테고리는 전체메일 = 1 개인메일 = 2 템플릿 = 3 
public interface EmailDao {
	List<Email> listEmail(Email email);
	// 보낸메일 가져오는메소드
	List<Email> templetEmail(Email email);
	// 이메일 템플릿을 가져오는 메소드
	public int EmailInsert(Email email);
	// 두개 다 입력
	public int templetEmailUpdate(Email email);
	// 템플릿만 수정
	public void templetEmailDelete(String title);
	// 템플릿만 삭제
	
	/*public int DBInsert(DBBoard db);
	int total();
	List<DBBoard> listDB(DBBoard db);
	public DBBoard DBDetail(int bnum);
	public void DBDelete(int bnum);
	public void insertBoard();
	public int DBUpdate(DBBoard db);
	public int totalDBCategory(String category);
	List<DBBoard> listDBCategory(DBBoard db);*/
}
