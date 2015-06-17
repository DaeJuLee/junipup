package service;

import java.util.List;

import model.Dept;
import model.Emp;
import model.EmpDept;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.DeptDao;
import dao.EmpDao;

@Service
public class EmpServiceImpl implements EmpService{

	@Autowired
	private EmpDao ed;
	@Autowired
	private DeptDao dd;
	
	public List<Emp> list(Emp emp) {
		return ed.list(emp);
	}
	
	public List<EmpDept> listEmp(EmpDept empDept) {
		return ed.listEmp(empDept);
	}
	
	public Emp selectEname(int empno){
		return ed.selectEname(empno);
	}
	
	public int insertEmp(Emp emp){
		return ed.insertEmp(emp);
	}

	public List<Dept> select() {
		return dd.select();
	}

	public int deleteEmp(int empno) {
		return ed.deleteEmp(empno);
	}

	public Emp check(int empno) {
		return ed.check(empno);
	}

	public int update(Emp emp) {
		return ed.update(emp);
	}

	public void insertEmp() {
		ed.insertEmp();
	}

	public int total() {
		return ed.total();
	}

}
