package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Dept;

@Repository
public class DeptDaoImpl implements DeptDao {
	
	@Autowired
	private SqlSession session;

	public List<Dept> select() {
		return session.selectList("selectDept");
	}
}