package com.littlePirates.project.model;

public class ChecklistVO {
	private String chl_No;
	private String chl_Name;
	private boolean Checked;
	
	public String getChl_No() {
		return chl_No;
	}
	public void setChl_No(String chl_No) {
		this.chl_No = chl_No;
	}
	public String getChl_Name() {
		return chl_Name;
	}
	public void setChl_Name(String chl_Name) {
		this.chl_Name = chl_Name;
	}
	public boolean isChecked() {
		return Checked;
	}
	public void setChecked(boolean checked) {
		Checked = checked;
	}
	
	
}
