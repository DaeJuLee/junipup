package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Email;
@Repository
public class EmailDaoImpl implements EmailDao {
	@Autowired
	private SqlSession session;
	
	public List<Email> listEmail(Email email) {
		return session.selectList("listEmail", email);
	}

	@Override
	public List<Email> templetEmail(Email email) {
		return session.selectList("listtempletEmail", email);
	}

	@Override
	public int EmailInsert(Email email) {
		return session.insert("EmailInsert", email);
	}


	public int templetEmailUpdate(Email email) {
		return session.update("templetEmailUpdate", email);
	}

	@Override
	public void templetEmailDelete(String title) {
		session.delete("templetEmailDelete", title);
	}
	
	

	


}
