package dao;

import java.util.List;
import model.Dept;

public interface DeptDao {
	List<Dept> select();
}