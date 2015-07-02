package service;

import java.util.List;

import model.AdminBoard;

public interface AdminService {
	List<AdminBoard> adminMain(AdminBoard adminboard);
	public void insertBoard();
	int adminTotal();
	int adminDelete(int nickname);
}
