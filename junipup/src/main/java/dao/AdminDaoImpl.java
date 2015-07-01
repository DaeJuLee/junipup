package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.AdminBoard;

@Repository
public class AdminDaoImpl implements AdminDao{
	@Autowired
	SqlSession session;
	public List<AdminBoard> adminMain(AdminBoard adminboard) {
		return session.selectList("listAdmin", adminboard);
	}
	public void insertBoard() {
		for(int i = 1 ; i < 500 ; i++){
			AdminBoard board = new AdminBoard();
			board.setNickname("닉"+i);
			board.setPhoto("사진"+i);
			board.setId("아디"+i);
			board.setPassword("패스"+i);
			board.setName("이름"+i);
			board.setPhoneNumber(2+i);
			board.setMrank(1+i);
			board.setUsePoint(100+i);
			board.setMaxPoint(100+i);

			session.insert("adminInsert", board);
		}
	}
	public int adminTotal() {
		return session.selectOne("totalAdmin");
	}

}