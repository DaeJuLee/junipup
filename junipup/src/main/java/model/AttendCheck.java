package model;

public class AttendCheck {

	private int year; //���� �⵵
	private int month; //���� �� ex)7���̸� 6�� ���
	private int day; //���� ��¥
	
	private int startDay; //����� ������ ->������1�� ���
	private int endDay; //����� ������ ��-> �Ŵ� 28�� 30�� 31�� ���� �ٸ�
	private int currentDay; //����� ���ۿ���
	private int newLine; //�� ���� 7���� ä������ ���� ���� ä��� ����
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
