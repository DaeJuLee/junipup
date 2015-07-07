package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value = "main")
	public String main(Model model){	
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
