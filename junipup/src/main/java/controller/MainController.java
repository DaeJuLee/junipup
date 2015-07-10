package controller;

import java.util.ArrayList;
import java.util.List;

import model.AndroidBoard;
import model.DBBoard;
import model.Html5Board;
import model.JQueryBoard;
import model.JavaBoard;
import model.JspBoard;
import model.NoticeBoard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.MainService;


@Controller
public class MainController {
	@Autowired
	MainService ms;
	
	@RequestMapping(value = "main")
	public String main(Model model){
		List<DBBoard> db = new ArrayList<DBBoard>();
		db = ms.DBRecent();
		System.out.println("제목추출: " + db.get(0).getTitle());
		List<JQueryBoard> jqb = new ArrayList<JQueryBoard>();
		jqb = ms.JQueryRecent();
		List<JspBoard> jb = new ArrayList<JspBoard>();
		jb = ms.JspRecent();
		List<JavaBoard> jab = new ArrayList<JavaBoard>();
		jab = ms.JavaRecent();
		List<AndroidBoard> ad = new ArrayList<AndroidBoard>();
		ad = ms.AndroidRecent();
		List<Html5Board> hb = new ArrayList<Html5Board>();
		hb = ms.Html5Recent();
		List<NoticeBoard> nb = new ArrayList<NoticeBoard>();
		nb = ms.NoticeRecent();
		model.addAttribute("DB", db);
		model.addAttribute("jQuery", jqb);
		model.addAttribute("Jsp", jb);
		model.addAttribute("Java", jab);
		model.addAttribute("Android", ad);
		model.addAttribute("Html5", hb);
		model.addAttribute("Notice",nb);
		return "main";
	}
	
	@RequestMapping(value="login")
	public String login(Model model){
		return "/member/login";
	}
	@RequestMapping(value = "main2")
	public String main2(Model model){	
		return "main2";
	}
}
