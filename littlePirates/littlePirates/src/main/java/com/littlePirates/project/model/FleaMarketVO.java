package com.littlePirates.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class FleaMarketVO {
	private int flNo;	/*게시판 번호*/
	private String memId; /*회원아이디*/
	private String flTitle; /*제목*/
	private String flName; /*제품 이름*/
	private int flPrice; /*가격*/
	private int flHeart; /*추천수*/
	private int flViewCount; /*조회수*/
	private int flResCount; /*댓글수*/
	private String flText;	/*내용*/
	private String flImageName; /*이미지이름*/
	private String flCategory; /*카테고리*/
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date flDate; /*날짜*/
	public int getFlNo() {
	
	return flNo;
	}
	
	public void setFlNo(int flNo) {
		this.flNo = flNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getFlTitle() {
		return flTitle;
	}
	public void setFlTitle(String flTitle) {
		this.flTitle = flTitle;
	}
	public String getFlName() {
		return flName;
	}
	public void setFlName(String flName) {
		this.flName = flName;
	}
	public int getFlPrice() {
		return flPrice;
	}
	public void setFlPrice(int flPrice) {
		this.flPrice = flPrice;
	}
	public int getFlHeart() {
		return flHeart;
	}
	public void setFlHeart(int flHeart) {
		this.flHeart = flHeart;
	}
	public int getFlViewCount() {
		return flViewCount;
	}
	public void setFlViewCount(int flViewCount) {
		this.flViewCount = flViewCount;
	}
	public int getFlResCount() {
		return flResCount;
	}
	public void setFlResCount(int flResCount) {
		this.flResCount = flResCount;
	}
	public String getFlText() {
		return flText;
	}
	public void setFlText(String flText) {
		this.flText = flText;
	}
	public String getFlImageName() {
		return flImageName;
	}
	public void setFlImageName(String flImageName) {
		this.flImageName = flImageName;
	}
	public String getFlCategory() {
		return flCategory;
	}
	public void setFlCategory(String flCategory) {
		this.flCategory = flCategory;
	}
	public Date getFlDate() {
		return flDate;
	}
	public void setFlDate(Date flDate) {
		this.flDate = flDate;
	}
	
	
	
}
