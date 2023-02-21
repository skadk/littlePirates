package com.littlePirates.project.model;

public class KBoardVO {
	private int kBrdNo;
	private String memId; 
	private String kBrdTitle;
	private String kBrdText; 
	private String kBrdDate; 
	
	
	public int getkBrdNo() {
		return kBrdNo;
	}
	public void setkBrdNo(int kBrdNo) {
		this.kBrdNo = kBrdNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemid(String memId) {
		this.memId = memId;
	}
	public String getkBrdTitle() {
		return kBrdTitle;
	}
	public void setkBrdTitle(String kBrdTitle) {
		this.kBrdTitle = kBrdTitle;
	}
	public String getkBrdText() {
		return kBrdText;
	}
	public void setkBrdText(String kBrdText) {
		this.kBrdText = kBrdText;
	}
	public String getkBrdDate() {
		return kBrdDate;
	}
	public void setkBrdDate(String kBrdDate) {
		this.kBrdDate = kBrdDate;
	}
	
}
