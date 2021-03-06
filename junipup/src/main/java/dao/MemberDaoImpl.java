package dao;

import java.util.HashMap;
import java.util.List;






import java.util.Map;

import model.Member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	private SqlSession session;
	/*
//	root-context에서 session이라는 bean객체를 생성.. @Autowired를 통해 링크함
//	<bean id="session" class="org.mybatis.spring.SqlSessionTemplate">
//	<constructor-arg index="0" ref="sqlSessionFactory" />
//	</bean>	
	public List<Emp> list(Emp emp) {
		return session.selectList("list", emp);
	}
	public int total() {
		return session.selectOne("total");
	}
	
	public List<EmpDept> listEmp(EmpDept empDept) {
		return session.selectList("listEmpDept", empDept);
	}
	 
	public Emp selectEname(int empno){
		return session.selectOne("selectEname", empno);
	}
	
	public int insertEmp(Emp emp){
		return session.insert("insertEmp", emp);
	}

	public int deleteEmp(int empno) {
		return session.delete("deleteEmp", empno);
	}

	public Emp check(int empno) {
		return session.selectOne("selectEname", empno);
	}

	public int update(Emp emp) {
		return session.update("updateEmp", emp);
	}

*/


	public int insertMember(Member member) {
		return session.insert("insertMember", member);
	}


	@Override
	public Member selectIdPass(String email, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("password", password);
		return session.selectOne("selectIdPass", map);
	}


	



	@Override
	public Member selectNickname(String nickname) {
		return session.selectOne("selectNickname", nickname);
	}


	@Override
	public Member selectEmail(String email) {
		return session.selectOne("selectEmail", email);
	}


	@Override
	public int updateMember(Member member) {
		return session.update("update1Member", member);
	}


	@Override
	public int deleteMember(String nickname) {
		return session.update("deleteMember", nickname);
	}
	public List<Member> memberList(Member member) {
		return session.selectList("list", member);
	}
	@Override
	public void pointUp2(String nickname) {
		session.update("pointUp2", nickname);
		
	}


	@Override
	public void pointUp5(String nickname) {
		session.update("pointUp5", nickname);
		
	}


	@Override
	public void pointUp7(String nickname) {
		session.update("pointUp7", nickname);
		
	}


	@Override
	public void pointUp10(String nickname) {
		session.update("pointUp10", nickname);
		
	}


	
	public int memberTotal() {
		
		return session.selectOne("totalMember");
	}

}
