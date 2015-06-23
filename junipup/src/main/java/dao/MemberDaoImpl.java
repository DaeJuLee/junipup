package dao;

import java.util.List;





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


}
