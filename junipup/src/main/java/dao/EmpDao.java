package dao;

import java.util.List;

import model.Emp;
import model.EmpDept;

public interface EmpDao {

	List<Emp> list(Emp emp);
	int total();
	List<EmpDept> listEmp(EmpDept empDept);
	Emp selectEname(int empno);
	public int insertEmp(Emp emp);
	int deleteEmp(int empno);
	Emp check(int empno);
	int update(Emp emp);
	void insertEmp();
}
