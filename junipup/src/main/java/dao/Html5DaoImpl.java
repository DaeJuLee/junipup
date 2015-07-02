package dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import model.Html5Board;
@Repository
public class Html5DaoImpl implements Html5Dao{
	@Autowired
	SqlSession session;

	public List<Html5Board> listHtml5(Html5Board html5board) {
		return session.selectList("listHtml5", html5board);
	}
	
	public void insertBoard() {
		for(int i = 1 ; i < 500 ; i++){
			Html5Board board = new Html5Board();
			board.setCategory("카"+i);
			board.setTitle("제"+i);
			board.setContent("내"+i);
			board.setFilename("파일이름"+i);
			board.setFilesize(i);
			board.setIp("1"+i);
			board.setNickname("닉"+i);
			board.setMrank("랭"+i);

			session.insert("insertHtml5", board);
		}
	}

	public int html5Insert(Html5Board html5) {
		return session.insert("html5Insert",html5);
	}

	public Html5Board html5Detail(int bnum) {
		return session.selectOne("html5Detail", bnum);
	}

	public int html5Update(Html5Board html5) {
		return session.update("html5Update", html5);
	}

	public int html5Delete(int num) {
		return session.delete("html5Delete", num);
	}

	public int html5Total() {
		return session.selectOne("totalHtml5");
	}

}
