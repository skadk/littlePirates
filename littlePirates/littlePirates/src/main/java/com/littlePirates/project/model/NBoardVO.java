package com.littlePirates.project.model;

public class NBoardVO {
	private int nBrdNo;
	private String memId; 
	private String nBrdTitle;
	private String nBrdText; 
	private String nBrdDate; 
	
	
	public int getnBrdNo() {
		return nBrdNo;
	}
	public void setnBrdNo(int nBrdNo) {
		this.nBrdNo = nBrdNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemid(String memId) {
		this.memId = memId;
	}
	public String getnBrdTitle() {
		return nBrdTitle;
	}
	public void setnBrdTitle(String nBrdTitle) {
		this.nBrdTitle = nBrdTitle;
	}
	public String getnBrdText() {
		return nBrdText;
	}
	public void setnBrdText(String nBrdText) {
		this.nBrdText = nBrdText;
	}
	public String getnBrdDate() {
		return nBrdDate;
	}
	public void setnBrdDate(String nBrdDate) {
		this.nBrdDate = nBrdDate;
	}
	
}
