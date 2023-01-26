package com.littlePirates.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class BoardVO {

	private int brdNo;
	private String memId;
	private String brdTitle;
	private String brdText;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date brdDate;
	private int brdViewCnt;

	public int getBrdNo() {
		return brdNo;
	}

	public void setBrdNo(int brdNo) {
		this.brdNo = brdNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getBrdTitle() {
		return brdTitle;
	}

	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}

	public String getBrdText() {
		return brdText;
	}

	public void setBrdText(String brdText) {
		this.brdText = brdText;
	}

	public Date getBrdDate() {
		return brdDate;
	}

	public void setBrdDate(Date brdDate) {
		this.brdDate = brdDate;
	}

	public int getBrdViewCnt() {
		return brdViewCnt;
	}

	public void setBrdViewCnt(int brdViewCnt) {
		this.brdViewCnt = brdViewCnt;
	}

}