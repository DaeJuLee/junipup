package dao;

import java.util.List;

import model.AdminBoard;



public interface AdminDao {
	List<AdminBoard> adminMain(AdminBoard adminboard);
	public void insertBoard();
	int adminTotal();
}
