package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.JspBoard;
@Repository
public class JspDaoImpl implements JspDao{

	@Autowired
	private SqlSession session;
	
	public int jspInsert(JspBoard jsp) {
		return session.insert("jspInsert", jsp);
	}
	
	public int total() {
		return session.selectOne("totalJsp");
	}

	public List<JspBoard> listJsp(JspBoard jsp) {
		return session.selectList("listJsp", jsp);
	}

	public JspBoard jspDetail(int bnum) {
		return session.selectOne("jspDetail", bnum);
	}

	public void jspDelete(int bnum) {
		session.delete("jspDelete", bnum);		
	}

	public void insertBoard() {
		for(int i = 1 ; i < 4000 ; i++){
			JspBoard board = new JspBoard();
			board.setCategory("카"+i);
			board.setTitle("제"+i);
			board.setContent("내"+i);
			board.setFilename("파일이름"+i);
			board.setFilesize(i);
			board.setIp("1"+i);
			board.setNickname("닉"+i);
			board.setMrank("랭"+i);
			session.insert("jspInsert", board);
		}		
	}

	public int jspUpdate(JspBoard jsp) {
		return session.update("jspUpdate", jsp);
	}

	public int totalJspCategory(String category) {
		return session.selectOne("totalJspCategory", category);
	}

	public List<JspBoard> listJspCategory(JspBoard db) {
		return session.selectList("listJspCategory", db);
	}

}
