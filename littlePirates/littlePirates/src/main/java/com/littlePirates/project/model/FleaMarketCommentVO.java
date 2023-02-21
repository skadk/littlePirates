package com.littlePirates.project.model;

import java.util.Date;

public class FleaMarketCommentVO {

	private int flcNo;	/*댓글 번호*/
	private String memId; /*회원아이디*/
	private String flcText; /*내용*/
	private Date flcDate; /*날짜*/
	private int flNo;	/*게시판 번호*/
	
	
	
	public int getFlcNo() {
		return flcNo;
	}
	public void setFlcNo(int flcNo) {
		this.flcNo = flcNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getFlcText() {
		return flcText;
	}
	public void setFlcText(String flcText) {
		this.flcText = flcText;
	}
	public Date getFlcDate() {
		return flcDate;
	}
	public void setFlcDate(Date flcDate) {
		this.flcDate = flcDate;
	}
	public int getFlNo() {
		return flNo;
	}
	public void setFlNo(int flNo) {
		this.flNo = flNo;
	}
	
	

	
	
}
