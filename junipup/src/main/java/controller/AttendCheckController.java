package controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AttendCheck;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AttendCheckController {

	
	@RequestMapping(value="attendCheck")
	public String attendCheck(Model model){

		AttendCheck ac = new AttendCheck();
		Calendar cal = Calendar.getInstance();
		ac.setYear(cal.get(Calendar.YEAR));
		//System.out.println("현재년도 : " + ac.getYear());
		ac.setMonth(cal.get(Calendar.MONTH)+1);
		//System.out.println("현재 달 : " + (ac.getMonth()));
		ac.setDay(cal.get(Calendar.DATE));
		//System.out.println("현재 일 : " + ac.getDay());
		
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
//		cal.set(ac.getYear(), ac.getMonth(), 1);
		
		ac.setStartDay(cal.getMinimum(Calendar.DATE));
		//System.out.println("그 달의 시작 일 : " + ac.getStartDay());//1값출력 무조건
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		//System.out.println("그 달의 마지막 일 : " + ac.getEndDay());//어떤 달의 총일수
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);
		//System.out.println("그 달의 시작 요일 : " + (ac.getCurrentDay()+1));
		ac.setNewLine(0);
		model.addAttribute("attendCheck", ac);
		
		return "/attendCheck/attendCheck";
	}
	
	@RequestMapping(value="attendCheckChange")
	// @ResponseBody Map<String, Object>
	//@RequestParam("year") String year, @RequestParam("month") String month
	public String attendCheckChange(Model model, @RequestParam("month") String month, HttpServletResponse rep, HttpServletRequest req) throws Exception {
		/*Map<String, Object> jsonObject = new HashMap<String, Object>();
		
		AttendCheck ac = new AttendCheck();
		Calendar cal = Calendar.getInstance();
		ac.setYear(Integer.parseInt(year));
		System.out.println("바뀐년도 : " + ac.getYear());
		ac.setMonth(Integer.parseInt(month));
		System.out.println("바뀐 달 : " + (ac.getMonth()));
		ac.setDay(cal.get(Calendar.DATE));
		System.out.println("모르겠네... 현재일 : " + ac.getDay());
		
		cal.set(ac.getYear(), ac.getMonth()-1, 1);
		
		ac.setStartDay(cal.getMinimum(Calendar.DATE));
		System.out.println("그 달의 시작 일 : " + ac.getStartDay());//1값출력 무조건
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		System.out.println("그 달의 마지막 일 : " + ac.getEndDay());//어떤 달의 총일수
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);
		System.out.println("그 달의 시작 요일 : " + (ac.getCurrentDay()+1));
		ac.setNewLine(0);
		
		jsonObject.put("year", Integer.toString(ac.getYear()));
		jsonObject.put("month", Integer.toString(ac.getMonth()));*/
		
		
		String str = "{ \"foo\": \"dkdk\", \"fruit\": \"melon\" }";
		
		rep.setContentType("text/html;charset=utf-8");
		PrintWriter out = rep.getWriter();
		out.print(str);
		
		//return jsonObject;
		return null;
	}
	
//	@RequestMapping(value="attendCheckChange")
//	public @ResponseBody String attendCheckChange(Model model, 
//			@RequestParam("year") String year, @RequestParam("month") String month){
//
//		
//		AttendCheck ac = new AttendCheck();
//		Calendar cal = Calendar.getInstance();
//		ac.setYear(Integer.parseInt(year));
//		System.out.println("바뀐년도 : " + ac.getYear());
//		ac.setMonth(Integer.parseInt(month));
//		System.out.println("바뀐 달 : " + (ac.getMonth()));
//		ac.setDay(cal.get(Calendar.DATE));
//		System.out.println("모르겠네... 현재일 : " + ac.getDay());
//		
//		cal.set(ac.getYear(), ac.getMonth()-1, 1);
//		
//		ac.setStartDay(cal.getMinimum(Calendar.DATE));
//		System.out.println("그 달의 시작 일 : " + ac.getStartDay());//1값출력 무조건
//		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
//		System.out.println("그 달의 마지막 일 : " + ac.getEndDay());//어떤 달의 총일수
//		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);
//		System.out.println("그 달의 시작 요일 : " + (ac.getCurrentDay()+1));
//		ac.setNewLine(0);
//		
//		model.addAttribute("attendCheckChange", ac);
//		
//		return Integer.toString(ac.getMonth());
//	}
	
}
