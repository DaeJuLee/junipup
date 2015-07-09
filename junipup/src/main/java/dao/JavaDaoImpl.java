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
		return session.selectOne("totalJava");
	}

	public List<JavaBoard> listJava(JavaBoard java) {
		return session.selectList("listJava", java);
	}

	public JavaBoard javaDetail(int bnum) {
		return session.selectOne("javaDetail", bnum);
	}
	
	public void javaDelete(int bnum) {
		session.delete("javaDelete", bnum);
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
			session.insert("javaInsert", board);
		}
	}

	public int javaUpdate(JavaBoard java) {
		return session.update("javaUpdate", java);
	}

	public int totalJavaCategory(String category) {
		return session.selectOne("totalJavaCategory", category);
	}

	public List<JavaBoard> listJavaCategory(JavaBoard java) {
		return session.selectList("listJavaCategory", java);
	}

}
