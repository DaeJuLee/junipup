package service;

import java.util.List;

import model.Dept;
import model.Emp;
import model.EmpDept;

public interface EmpService {

	List<Emp> list(Emp emp);
	int total();
	List<EmpDept> listEmp(EmpDept empDept);
	Emp selectEname(int empno);
	int insertEmp(Emp emp);
	List<Dept> select();
	int deleteEmp(int empno);
	Emp check(int empno);
	int update(Emp emp);
	void insertEmp();
	
}
