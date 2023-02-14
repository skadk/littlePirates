package com.littlePirates.project.model;

import java.util.Date;

public class BoardVO {
	private int brdNo;
	private String memId;
	private String brdTitle;
	private String brdText;
	private int brdViewCount;
	private int brdResCount; /*댓글수*/
	private int brdRecommendCount; /*추천수*/
	private Date brdDate;
	
	
	
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
	public int getBrdViewCount() {
		return brdViewCount;
	}
	public void setBrdViewCount(int brdViewCount) {
		this.brdViewCount = brdViewCount;
	}
	public int getBrdResCount() {
		return brdResCount;
	}
	public void setBrdResCount(int brdResCount) {
		this.brdResCount = brdResCount;
	}
	public int getBrdRecommendCount() {
		return brdRecommendCount;
	}
	public void setBrdRecommendCount(int brdRecommendCount) {
		this.brdRecommendCount = brdRecommendCount;
	}
	public Date getBrdDate() {
		return brdDate;
	}
	public void setBrdDate(Date brdDate) {
		this.brdDate = brdDate;
	}
	
	
	
}
