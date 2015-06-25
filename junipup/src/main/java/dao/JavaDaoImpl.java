package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.JavaBoard;

@Repository
public class JavaDaoImpl implements JavaDao {

	@Autowired
	private SqlSession session;
	
	public int javaInsert(JavaBoard java) {
		return session.insert("javaInsert", java);
	}

	public int total() {
		return session.selectOne("total");
	}

	public List<JavaBoard> listJava(JavaBoard java) {
		return session.selectList("listJava", java);
	}

	public JavaBoard javaDetail(String title) {
		return session.selectOne("javaDetail", title);
	}
	
	public void javaDelete(String title) {
		session.delete("javaDelete", title);
	}

	public void insertBoard() {
		for(int i = 1 ; i < 4000 ; i++){
			JavaBoard board = new JavaBoard();
			board.setCategory("카"+i);
			board.setTitle("제"+i);
			board.setContent("내"+i);
			board.setFilename("파일이름"+i);
			board.setFilesize(i);
			board.setIp("1"+i);
			board.setNickname("닉"+i);
			board.setMrank("랭"+i);
			session.insert("insertJava", board);
		}
	}

	public int javaUpdate(JavaBoard java) {
		return session.update("javaUpdate", java);
	}

}
