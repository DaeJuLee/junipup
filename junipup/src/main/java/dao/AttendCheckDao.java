package dao;

import model.AttendCheck;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

public interface AttendCheckDao {

	public AttendCheck selectAttend(AttendCheck ac);
	public int insertAttendPlus(AttendCheck ac);
	
	
	
}
