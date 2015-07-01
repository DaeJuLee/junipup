package dao;

import java.util.List;
import model.JQueryBoard;

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
}
