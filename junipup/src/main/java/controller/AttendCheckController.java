package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AttendCheck;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		ac.setNickname("master"); //mainHeader2와 연결
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
				+ "\" }";
		
		System.out.println("이전달 출석 : " + ac.getAttend());
		rep.setContentType("text/html;charset=utf-8");
		PrintWriter out = rep.getWriter();
		out.print(str);
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
				+ "\" }";
		System.out.println("이전달 출석 : " + ac.getAttend());
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
		
		cal.set(ac.getYear(), ac.getMonth()-1, 1);
		
		ac.setStartDay(cal.getMinimum(Calendar.DATE));//1값출력 무조건
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));//어떤 달의 총일수
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);
		ac.setNewLine(0);
		
		return ac;
	}
	
}
