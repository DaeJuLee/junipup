package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.AndroidBoard;

@Repository
public class AndroidDaoImpl implements AndroidDao{

	@Autowired
	private SqlSession session;
	
	public int insert(AndroidBoard android) {
		return session.insert("insertAndroid", android);
	}

	public int total() {
		return session.selectOne("total");
	}

	public List<AndroidBoard> listAndroid(AndroidBoard android) {
		return session.selectList("listAndroid", android);
	}

	public AndroidBoard selectAndroid(String title) {
		return session.selectOne("androidDetail", title);
	}

}
