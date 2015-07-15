package service;

import model.AttendCheck;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AttendCheckDao;

public interface AttendCheckService {

	public AttendCheck selectAttend(AttendCheck ac);
}
