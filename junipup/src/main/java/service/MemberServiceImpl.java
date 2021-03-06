package service;

import java.util.List;





import model.Member;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {


	@Autowired
	private MemberDao md;

	
/*	public List<Emp> list(Emp emp) {
		return ed.list(emp);
	}
	
	public List<EmpDept> listEmp(EmpDept empDept) {
		return ed.listEmp(empDept);
	}
	
	public Emp selectEname(int empno){
		return ed.selectEname(empno);
	}
	 

	public List<Dept> select() {
		return dd.select();
	}

	public int deleteEmp(int empno) {
		return ed.deleteEmp(empno);
	}

	public Emp check(int empno) {
		return ed.check(empno);
	}

	public int update(Emp emp) {
		return ed.update(emp);
	}

	public void insertEmp() {
		ed.insertEmp();
	}

	public int total() {
		return ed.total();
	}

*/


	public int insertMember(Member member) {
		member.setMrank(10);
		member.setUsePoint(0);
		member.setMaxPoint(50);
		
		
		return md.insertMember(member);
		
	}

	@Override
	public Member selectIdPass(String id, String password) {
		return md.selectIdPass(id, password);
	}


	@Override
	public Member selectNickname(String nickname) {
		return md.selectNickname(nickname);
	}

	@Override
	public Member selectEmail(String email) {
		return md.selectEmail(email);
	}

	@Override
	public int updateMember(Member member) {
		return md.updateMember(member);
	}

	@Override
	public int deleteMember(String nickname) {
		return md.deleteMember(nickname);
	}
	@Override
	public void pointup2(String nickname) {
		md.pointUp2(nickname);
		
	}

	@Override
	public void pointup5(String nickname) {
		md.pointUp5(nickname);
		
	}

	@Override
	public void pointup7(String nickname) {
		md.pointUp7(nickname);
		
	}

	@Override
	public void pointup10(String nickname) {
		md.pointUp10(nickname);
		
	}

	@Override
	public int memberTotal() {
		return md.memberTotal();
	}

	@Override
	public List<Member> memberList(Member member) {
		
		return md.memberList(member);
	}



}
