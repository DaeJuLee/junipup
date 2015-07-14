package service;

import java.util.List;

import model.Member;





public interface MemberService {
		
	//List<Member> list(Member member);
	//int total();
	//Member selectEname(int memberno);
	public int insertMember(Member member);
	public Member selectIdPass(String email, String password);
	public Member selectNickname(String nickname);
	public Member selectEmail(String email);
	public int updateMember(Member member);
	public int deleteMember(Member member);
	public void pointup2(String nickname);
	public void pointup5(String nickname);
	public void pointup7(String nickname);
	public void pointup10(String nickname);
	//int deletemember(int memberno);
	//Member check(int memberno);
	//int update(Member member);


} 
