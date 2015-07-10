package model;

public class AttendCheck {

	private int year; //현재 년도
	private int month; //현재 월 ex)7월이면 6값 출력
	private int day; //현재 날짜
	
	private int startDay; //어떤달의 시작일 ->무조건1값 출력
	private int endDay; //어떤달의 마지막 일-> 매달 28일 30일 31일 각각 다름
	private int currentDay; //어떤달의 시작요일
	private int newLine; //한 주의 7에서 채워지지 않은 곳을 채우는 변수
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public int getStartDay() {
		return startDay;
	}
	public void setStartDay(int startDay) {
		this.startDay = startDay;
	}
	public int getEndDay() {
		return endDay;
	}
	public void setEndDay(int endDay) {
		this.endDay = endDay;
	}
	public int getCurrentDay() {
		return currentDay;
	}
	public void setCurrentDay(int currentDay) {
		this.currentDay = currentDay;
	}
	public int getNewLine() {
		return newLine;
	}
	public void setNewLine(int newLine) {
		this.newLine = newLine;
	}
	
}
