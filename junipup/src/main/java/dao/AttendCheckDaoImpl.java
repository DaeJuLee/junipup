package dao;

import java.util.Calendar;

import model.AttendCheck;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AttendCheckDaoImpl implements AttendCheckDao{

	@Autowired
	SqlSession session;

	@Override
	public AttendCheck selectAttend(AttendCheck ac) {
		return session.selectOne("selectAttend", ac);
	}

	@Override
	public int insertAttendPlus(AttendCheck ac) {
		Calendar cal = Calendar.getInstance();
		ac.setYear(cal.get(Calendar.YEAR));
		ac.setMonth(cal.get(Calendar.MONTH)+1);
		int day = cal.get(Calendar.DATE);//현재요일
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		ac.setStartDay(cal.getMinimum(Calendar.DATE));//1값출력 무조건
		ac.setEndDay(cal.getActualMaximum(Calendar.DAY_OF_MONTH));//어떤 달의 총일수
		ac.setCurrentDay(cal.get(Calendar.DAY_OF_WEEK)-1);//그달의 시작요일
		ac.setAttend(newMemberPlus(day));
		
		return session.insert("insertAttendPlus", ac);
		
	}
	
	public static String newMemberPlus(int day){
		String attend="";
		for(int i = 0; i < day ; i++){
			if(day-1 == i){
				attend += "1";
			}else{
				attend += "0";
			}
		}
		return attend;
	}
}
