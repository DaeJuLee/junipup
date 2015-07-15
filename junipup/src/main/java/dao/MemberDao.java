package dao;

import java.util.List;

import model.Member;





public interface MemberDao {
		
	 
	//int total();
	//Member selectEname(int memberno);
	List<Member> memberList(Member member);
	public int insertMember(Member member);
	public Member selectIdPass(String email, String password);

	public Member selectNickname(String nickname);
	public Member selectEmail(String email);
	public int updateMember(Member member);
	public int deleteMember(Member member);
	public void pointUp2(String nickname);
	public void pointUp5(String nickname);
	public void pointUp7(String nickname);
	public void pointUp10(String nickname);
	int memberTotal();
	//int deletemember(int memberno);
	//Member check(int memberno);
	//int update(Member member);
 
}
