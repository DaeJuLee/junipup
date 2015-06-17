package controller;

import java.util.List;

import model.Dept;
import model.Emp;
import model.EmpDept;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.EmpService;
import service.Paging;

@Controller
public class EmpController {

	@Autowired
	EmpService es;
	
	@RequestMapping(value="listEmp")
	public String listEmp(Model model){
		EmpDept empDept = null;
		List<EmpDept> listEmp = es.listEmp(empDept);
		model.addAttribute("listEmp", listEmp);
		return "listEmp";
	}
	
	@RequestMapping(value="list")
	public String list(Emp emp, String currentPage, Model model){
		int total = es.total();
		Paging pg = new Paging(total, currentPage);
		emp.setStart(pg.getStart());
		emp.setEnd(pg.getEnd());
		List<Emp> list = es.list(emp);
		model.addAttribute("list", list);
		model.addAttribute("pg", pg);
		return "list";
	}
	
	@RequestMapping(value="detail")
	public String detail(int empno, Model model){
		Emp emp = es.selectEname(empno);
		model.addAttribute("selectEname", emp);
		return "detail";
	}
	
	@RequestMapping(value="confirm")
	public String confirm(int empno, Model model){
		Emp emp = es.selectEname(empno);
		model.addAttribute("empno", empno);
		if(emp != null){
			model.addAttribute("msg", "중복된 사번입니다.");
			return "forward:insertEmp.do";
		}else{
			model.addAttribute("msg", "사용가능한 사번입니다.");
			return "forward:insertEmp.do";
		}
	}
	
	@RequestMapping(value="insertEmp")
	public String insertmove(Model model){
		Emp emp = null;
		List<Emp> list = es.list(emp);
		model.addAttribute("list", list);
		List<Dept> listDept = es.select();
		model.addAttribute("listDept", listDept);
		return "insertEmp";
	}
	
	@RequestMapping(value="insert", method=RequestMethod.POST)
	public String insertEmp(Emp emp, Model model){		
		Emp emp1 = es.check(emp.getEmpno());
		if(emp1 != null){
			model.addAttribute("msg", "존재하는 데이터입니다.");
			return "forward:insertEmp.do";
		}
		int result = es.insertEmp(emp);
		if(result > 0){
			return "redirect:list.do";
		}else{
			model.addAttribute("msg", "입력에 실패했습니다.");
			return "forwardinsertEmp";
		}
	}
	
	@RequestMapping(value="delete")
	public String deleteEmp(int empno ,Model model){
		int result = es.deleteEmp(empno);
		if(result > 0){
			return "redirect:list.do";
		}else{
			return "redirect:detail.do?empno"+empno;
		}
	}
	
	@RequestMapping(value="updateForm")
	public String updateForm(int empno, Model model){
		Emp emp = es.selectEname(empno);
		model.addAttribute("emp", emp);
		return "updateForm";
	}
	
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String update(Emp emp, Model model){
		int result = es.update(emp);
		if(result > 0){
			return "redirect:list.do";
		}else{
			return "updateForm";
		}
		
	}
	
	@RequestMapping(value="insert")
	public String insert(Model model){
		es.insertEmp();
		return "insert";
	}
	
}
