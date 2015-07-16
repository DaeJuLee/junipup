package dao;

import java.util.List;

import model.JQueryBoard;
import model.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JQueryDaoImpl implements JQueryDao {
	@Autowired
	SqlSession session;

	public List<JQueryBoard> listJQuery(JQueryBoard jQueryboard) {
		return session.selectList("listJQuery", jQueryboard);
	}

	public int JQueryInsert(JQueryBoard jquery) {
		return session.insert("JQueryInsert", jquery);
	}

	public JQueryBoard JQueryDetail(int bnum) {
		return session.selectOne("JQueryDetail", bnum);
	}

	public int jQueryUpdate(JQueryBoard jquery) {
		return session.update("JQueryUpdate", jquery);
	}

	public int JQueryDelete(int bnum) {
		return session.delete("JQueryDelete", bnum);
	}
	
	public int JQueryTotal() {
		return session.selectOne("totalJQuery");
	}

	public void insertBoard() {
		for(int i = 1 ; i < 500 ; i++){
			JQueryBoard board = new JQueryBoard();
			board.setCategory("카"+i);
			board.setTitle("제"+i);
			board.setContent("내"+i);
			board.setFilename("파일이름"+i);
			board.setFilesize(i);
			board.setIp("1"+i);
			board.setNickname("닉"+i);
			board.setMrank("랭"+i);

			session.insert("JQueryInsert", board);
		}
		
	}

	@Override
	public List<JQueryBoard> listJQueryCategory(JQueryBoard JQueryboard) {
		return session.selectList("listJQueryCategory", JQueryboard);
	}

	@Override
	public int totalJQueryCategory(String category) {
		return session.selectOne("totalJQueryCategory", category);
	}

	@Override
	public void jQueryPointUp5(Member member) {
		session.insert("pointUp5", member);
		
	}

	@Override
	public Member selectNickname(String nickname) {
		return session.selectOne("selectNickname", nickname);
	}

	@Override
	public int HitsUpdate(int bnum) {
		return session.update("jQueryHitsUpdate", bnum);
	}
}
