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
		System.out.println("����⵵ : " + ac.getYear());
		ac.setMonth(cal.get(Calendar.MONTH));
		System.out.println("���� �� : " + ac.getMonth());
		ac.setDay(cal.get(Calendar.DATE));
		System.out.println("���� �� : " + ac.getDay());
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		
		ac.setStartDay(cal.getMinimum(Calendar.DATE));
		System.out.println("�� ���� ���� �� : " + ac.getStartDay());
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));
		System.out.println("�� ���� ������ �� : " + ac.getEndDay());
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK));
		System.out.println("�� ���� ���� ���� : " + ac.getCurrentDay());
		ac.setNewLine(0);
		model.addAttribute("attendCheck", ac);
		
		return "/attendCheck/attendCheck";
	}
	
}
