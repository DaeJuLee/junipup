package controller;

import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AttendCheck;
import model.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.AttendCheckService;
import service.MemberService;

@Controller
public class AttendCheckController {

	@Autowired
	AttendCheckService acs;
	@Autowired
	MemberService msm;
	
	@RequestMapping(value="attendCheck")
	public String attendCheck(Model model, String nickname){
		
		AttendCheck ac = new AttendCheck();
		AttendCheck ac1 = new AttendCheck();
		Calendar cal = Calendar.getInstance();
		ac.setYear(cal.get(Calendar.YEAR));
		ac.setMonth(cal.get(Calendar.MONTH)+1);
		ac.setNickname(nickname); //mainHeader2와 연결
		System.out.println("현재월 : " + ac.getMonth());//7 정확한 현재달
		System.out.println("현재월 : " + Calendar.MONTH);//2
		System.out.println("현재월 : " + cal.get(Calendar.MONTH));//6
		ac1 = acs.selectAttend(ac);
		ac.setDay(cal.get(Calendar.DATE));
		System.out.println("현재 요일 : " + ac.getDay());
		System.out.println("현재 요일 : " + cal.get(Calendar.DATE));
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		ac.setStartDay(cal.getMinimum(Calendar.DATE));//1값출력 무조건
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));//어떤 달의 총일수
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);//그달의 시작요일
		ac.setNewLine(0);
		ac.setAttend(ac1.getAttend());
		System.out.println("출석  : " + ac.getAttend());
		model.addAttribute("attendCheck", ac);
		
		return "/attendCheck/attendCheck";
	}
	
	@RequestMapping(value="attendCheckChangeBefore")
	public String attendCheckChangeBefore(Model model, HttpServletResponse rep, HttpServletRequest req) throws Exception {
		
		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String nickname = req.getParameter("nickname");
		
		System.out.println("년도 : " + year);
		System.out.println("월 : " + month);
		System.out.println("닉네임 : " + nickname);
		
		Member member = msm.selectNickname(nickname);
		int bigu = Integer.parseInt(member.getRegDate().substring(4, 6));
		System.out.println("문자열 가입일 : " + member.getRegDate().substring(4, 6));
		System.out.println("정수 가입일 : " + bigu);
		if(Integer.parseInt(month) < bigu){
			String str = "{ \"enable\": \""
					+ "no"
					+ "\" }";
			rep.setContentType("text/html;charset=utf-8");
			PrintWriter out = rep.getWriter();
			out.print(str);
			System.out.println("if문");
		}else{
			AttendCheck ac = new AttendCheck();
			ac = setCalendar(Integer.parseInt(year), Integer.parseInt(month));
			AttendCheck ac1 = new AttendCheck();
			ac.setYear(Integer.parseInt(year));
			ac.setMonth(Integer.parseInt(month));
			ac.setNickname(nickname);
			ac1 = acs.selectAttend(ac);
			String str = "{ \"year\": \""
					+ year
					+ "\", \"month\": \""
					+ month
					+ "\", \"currentDay\": \""
					+ ac.getCurrentDay()
					+ "\", \"endDay\": \""
					+ ac.getEndDay()
					+ "\", \"newLine\": \""
					+ ac.getNewLine()
					+ "\", \"attend\": \""
					+ ac1.getAttend()
					+ "\", \"day\": \""
					+ ac.getDay()
					+ "\", \"enable\": \""
					+ "yes"
					+ "\" }";
			
			System.out.println("이전달 출석 : " + ac1.getAttend());
			System.out.println("----------------------------");
			rep.setContentType("text/html;charset=utf-8");
			PrintWriter out = rep.getWriter();
			out.print(str);
		}
		return null;
	}
	
	@RequestMapping(value="attendCheckChangeAfter")
	public String attendCheckChangeAfter(Model model, HttpServletResponse rep, HttpServletRequest req) throws Exception {
		
		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String nickname = req.getParameter("nickname");
		
		System.out.println("년도 : " + year);
		System.out.println("월 : " + month);
		System.out.println("닉네임 : " + nickname);
		
		AttendCheck ac = new AttendCheck();
		ac = setCalendar(Integer.parseInt(year), Integer.parseInt(month));
		AttendCheck ac1 = new AttendCheck();
		ac.setYear(Integer.parseInt(year));
		ac.setMonth(Integer.parseInt(month));
		ac.setNickname(nickname);
		ac1 = acs.selectAttend(ac);
		
		String str = "{ \"year\": \""
				+ year
				+ "\", \"month\": \""
				+ month
				+ "\", \"currentDay\": \""
				+ ac.getCurrentDay()
				+ "\", \"endDay\": \""
				+ ac.getEndDay()
				+ "\", \"newLine\": \""
				+ ac.getNewLine()
				+ "\", \"attend\": \""
				+ ac1.getAttend()
				+ "\", \"day\": \""
				+ ac.getDay()
				+ "\" }";
		System.out.println("이후달 출석 : " + ac1.getAttend());
		System.out.println("----------------------------");
		rep.setContentType("text/html;charset=utf-8");
		PrintWriter out = rep.getWriter();
		out.print(str);
		return null;
	}
	
	@RequestMapping(value="attend")//보내야할것 출석했는지 여부, 현재날, dao는 attend column에 1더함
	public String attend(Model model, HttpServletResponse rep, HttpServletRequest req) throws Exception {
		
		String chulsuk = req.getParameter("chulsuk");
		String year = req.getParameter("year");
		String month = req.getParameter("month");
		String nickname = req.getParameter("nickname");
		String day = req.getParameter("day");
		String str = null;
		
		AttendCheck ac = new AttendCheck();
		ac.setYear(Integer.parseInt(year));
		ac.setMonth(Integer.parseInt(month));
		ac.setNickname(nickname);
		AttendCheck ac1 = new AttendCheck();
		ac1 = acs.selectAttend(ac);
		
		
		if(ac1.getAttend().length() == Integer.parseInt(day)){
			System.out.println("출석확인 : if문 들어옴");
			str = "{ \"success\": \""
					+ "0"
					+ "\" }";
		}else{
			System.out.println("출석확인 : else문 들어옴");
			ac.setAttend(ac1.getAttend()+chulsuk);
			str = "{ \"success\": \""
					+ "1"
					+ "\", \"day\": \""
					+ day
					+ "\" }";
			int result = acs.updateAttend(ac);
		}
		System.out.println("---------------출석확인-----------------");
		rep.setContentType("text/html;charset=utf-8");
		PrintWriter out = rep.getWriter();
		out.print(str);
		return null;
		
	}
	
	
	public AttendCheck setCalendar(int year, int month){
		AttendCheck ac = new AttendCheck();
		Calendar cal = Calendar.getInstance();
		ac.setYear(year);
		ac.setMonth(month);
		System.out.println("바뀐 월 : " + ac.getMonth());
		
		if(ac.getMonth() == month){
			System.out.println("controller if문 들어옴");
			ac.setDay(cal.get(Calendar.DATE));
			System.out.println("----------------------------");
		}else{
			System.out.println("controller else문 들엉옴");
			ac.setDay(32);
			System.out.println("----------------------------");
		}
		cal.set(ac.getYear(), ac.getMonth()-1, 1);
		
		
		ac.setStartDay(cal.getMinimum(Calendar.DATE));//1값출력 무조건
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));//어떤 달의 총일수
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);
		ac.setNewLine(0);
		
		return ac;
	}
	
}
