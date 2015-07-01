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

}
