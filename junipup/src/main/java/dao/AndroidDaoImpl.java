package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.AndroidBoard;
import model.Member;


@Repository
public class AndroidDaoImpl implements AndroidDao{

	@Autowired
	private SqlSession session;
	
	public int androidInsert(AndroidBoard android) {
		return session.insert("androidInsert", android);
	}

	public int total() {
		return session.selectOne("totalAndroid");
	}

	public List<AndroidBoard> listAndroid(AndroidBoard android) {
		return session.selectList("listAndroid", android);
	}

	public AndroidBoard androidDetail(int bnum) {
		return session.selectOne("androidDetail", bnum);
	}
	
	public void androidDelete(int bnum){
		session.delete("androidDelete", bnum);
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
			
			session.insert("androidInsert", board);
		}
	}

	@Override
	public List<AndroidBoard> listAndroidCategory(AndroidBoard android) {
		return session.selectList("listAndroidCategory", android);
	}

	@Override
	public int totalAndroidCategory(String category) {
		return session.selectOne("totalAndroidCategory", category);
	}

	@Override
	public void androidPointUp5(Member member) {
		session.insert("pointUp5", member);
		
	}

	@Override
	public Member selectNickname(String nickname) {
		return session.selectOne("selectNickname", nickname);
	}

	@Override
	public int HitsUpdate(int bnum) {
		return session.update("AndroidHitsUpdate", bnum);
	}
	
}
