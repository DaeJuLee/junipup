package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AdminDao;
import model.AdminBoard;
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminDao ad;
	public List<AdminBoard> adminMain(AdminBoard adminboard) {
		return ad.adminMain(adminboard);
	}
	public void insertBoard() {
		ad.insertBoard();
		
	}
	public int adminTotal() {
		return ad.adminTotal();
	}
	public int adminDelete(int nickname) {
		return ad.adminDelete(nickname);
	}

}
