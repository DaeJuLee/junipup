package org.sample.se;

import java.util.Date;

import org.sample.se.Util.Pagination;

public class Board extends Pagination {

	private Integer boardid;
	private String title;
	private String memberid;
	private String content;
	private Date regdate;
	private Integer readcount;
	private Integer author;
	private Integer boardNum;

	private String searchOption;
	private String searchInput;

	public String toString() {
		return "Board [boardid=" + boardid + ", title=" + title + ", memberid="
				+ memberid + ", content=" + content + ", regdate=" + regdate
				+ ", readcount=" + readcount + ", author=" + author
				+ ", boardNum=" + boardNum + ", searchOption=" + searchOption
				+ ", searchInput=" + searchInput + "]";
	}

	public Integer getBoardid() {
		return boardid;
	}

	public void setBoardid(Integer boardid) {
		this.boardid = boardid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Integer getReadcount() {
		return readcount;
	}

	public void setReadcount(Integer readcount) {
		this.readcount = readcount;
	}

	public Integer getAuthor() {
		return author;
	}

	public void setAuthor(Integer author) {
		this.author = author;
	}

	public Integer getBoardNum() {
		return boardNum;
	}

	public void setBoardNum(Integer boardNum) {
		this.boardNum = boardNum;
	}

	public String getSearchOption() {
		return searchOption;
	}

	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}

	public String getSearchInput() {
		return searchInput;
	}

	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}
	
}
