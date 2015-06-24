package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.AndroidBoard;
import model.Emp;

@Repository
public class AndroidDaoImpl implements AndroidDao{

	@Autowired
	private SqlSession session;
	
	public int androidInsert(AndroidBoard android) {
		return session.insert("androidInsert", android);
	}

	public int total() {
		return session.selectOne("total");
	}

	public List<AndroidBoard> listAndroid(AndroidBoard android) {
		return session.selectList("listAndroid", android);
	}

	public AndroidBoard androidDetail(String title) {
		return session.selectOne("androidDetail", title);
	}
	
	public void androidDelete(String title){
		session.delete("androidDelete", title);
	}
	
	public int androidUpdate(AndroidBoard android) {
		return session.update("androidUpdate", android);
	}

	public void insertBoard() {
		for(int i = 1 ; i < 4000 ; i++){
			AndroidBoard board = new AndroidBoard();
			board.setCategory("카"+i);
			board.setTitle("제"+i);
			board.setContent("내"+i);
			board.setFilename("파일이름"+i);
			board.setFilesize(i);
			board.setIp("1"+i);
			board.setNickname("닉"+i);
			board.setMrank("랭"+i);

			session.insert("insertAndroid", board);
		}
	}
	
}
