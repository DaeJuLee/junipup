package controller;

import model.AttendCheck;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.*;

@Controller
public class AttendCheckController {

	
	@RequestMapping(value="attendCheck")
	public String attendCheck(Model model){
		AttendCheck ac = new AttendCheck();
		Calendar cal = Calendar.getInstance();
		ac.setYear(cal.get(Calendar.YEAR));
		System.out.println("현재년도 : " + ac.getYear());
		ac.setMonth(cal.get(Calendar.MONTH));
		System.out.println("현재 달 : " + ac.getMonth());
		ac.setDay(cal.get(Calendar.DATE));
		System.out.println("현재 일 : " + ac.getDay());
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		
		ac.setStartDay(cal.getMinimum(Calendar.DATE));
		System.out.println("그 달의 시작 일 : " + ac.getStartDay());
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		System.out.println("그 달의 마지막 일 : " + ac.getEndDay());
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK));
		System.out.println("그 달의 현재 요일 : " + ac.getCurrentDay());
		ac.setNewLine(0);
		model.addAttribute("attendCheck", ac);
		
		return "/attendCheck/attendCheck";
	}
	
}
