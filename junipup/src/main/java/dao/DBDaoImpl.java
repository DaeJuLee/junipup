package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DBBoard;
import model.Member;

@Repository
public class DBDaoImpl implements DBDao {

	@Autowired
	private SqlSession session;

	public int DBInsert(DBBoard db) {
		return session.insert("DBInsert", db);
	}

	public int total() {
		return session.selectOne("totalDB");
	}

	public List<DBBoard> listDB(DBBoard db) {

		return session.selectList("listDB", db);
	}

	public DBBoard DBDetail(int bnum) {

		return session.selectOne("DBDetail", bnum);
	}

	public void DBDelete(int bnum) {
		session.delete("DBDelete", bnum);
	}

	public void insertBoard() {
		for (int i = 1; i < 4000; i++) {
			DBBoard board = new DBBoard();
			board.setCategory("카" + i);
			board.setTitle("제" + i);
			board.setContent("내" + i);
			board.setFilename("파일이름" + i);
			board.setFilesize(i);
			board.setIp("1" + i);
			board.setNickname("닉" + i);
			board.setMrank("랭" + i);

			session.insert("DBInsert", board);
		}
	}

	public int DBUpdate(DBBoard db) {

		return session.update("DBUpdate", db);
	}

	@Override
	public int totalDBCategory(String category) {
		return session.selectOne("totalDBCategory", category);
	}

	@Override
	public List<DBBoard> listDBCategory(DBBoard db) {
		return session.selectList("listDBCategory", db);
	}

	@Override
	public void DBPointUp5(Member member) {
		session.insert("pointUp5", member);
		
	}
	@Override
	public int HitsUpdate(int bnum) {
		return session.update("DBHitsUpdate", bnum);
	}

	@Override
	public Member selectNickname(String nickname) {
		return session.selectOne("selectNickname", nickname);
	}
}
