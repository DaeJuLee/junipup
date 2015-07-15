package service;

import model.AttendCheck;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AttendCheckDao;

@Service
public class AttendCheckServiceImpl implements AttendCheckService{

	@Autowired
	AttendCheckDao acd;

	@Override
	public AttendCheck selectAttend(AttendCheck ac) {
			return acd.selectAttend(ac);
	}
}
