package com.littlePirates.project.model;

import java.sql.Timestamp;

public class ChecklistVO {
	private int chlNo;

	private String chlImageName;
	private int chhNo;
	private String memId;
	private String chhDate;
	private int chhTimes;
	
	private String chlNo1;
	private String chlNo2;
	private String chlNo3;
	private String chlNo4;
	private String chlNo5;
	private String chlNo6;
	private String chlNo7;
	private String chlNo8;
	private String chlNo9;
	
	private String chlText1;
	private String chlText2;
	private String chlText3;
	private String chlText4;
	private String chlText5;
	private String chlText6;
	private String chlText7;
	private String chlText8;
	private String chlText9;
	
	private String chlNo1_Checked;
	private String chlNo2_Checked;
	private String chlNo3_Checked;
	private String chlNo4_Checked;
	private String chlNo5_Checked;
	private String chlNo6_Checked;
	private String chlNo7_Checked;
	private String chlNo8_Checked;
	private String chlNo9_Checked;
	private int chh_Checked;
	
	
	private int selfNo; 
	private int pgNo;
	private String sclNo1;
	private String sclNo2; 
	private String sclNo3; 
	private String sclNo4;
	private String sclNo5;
	private String sclNo1_Checked;
	private String sclNo2_Checked;
	private String sclNo3_Checked;
	private String sclNo4_Checked;
	private String sclNo5_Checked;
	private String sclDate;
	private String scl_photoName;
	private String scl_photoPath;
	private String scl_Text;
	
	
	

	public int getChlNo() {
		return chlNo;
	}
	public void setChlNo(int chlNo) {
		this.chlNo = chlNo;
	}

	public String getChlImageName() {
		return chlImageName;
	}
	public void setChlImageName(String chlImageName) {
		this.chlImageName = chlImageName;
	}
	public int getChhNo() {
		return chhNo;
	}
	public void setChhNo(int chhNo) {
		this.chhNo = chhNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getChhDate() {
		return chhDate;
	}
	public void setChhDate(String chhDate) {
		this.chhDate = chhDate;
	}
	public int getChhTimes() {
		return chhTimes;
	}
	public void setChhTimes(int chhTimes) {
		this.chhTimes = chhTimes;
	}
	
	
	public String getChlText1() {
		return chlText1;
	}
	public void setChlText1(String chlText1) {
		this.chlText1 = chlText1;
	}
	public String getChlText2() {
		return chlText2;
	}
	public void setChlText2(String chlText2) {
		this.chlText2 = chlText2;
	}
	public String getChlText3() {
		return chlText3;
	}
	public void setChlText3(String chlText3) {
		this.chlText3 = chlText3;
	}
	public String getChlText4() {
		return chlText4;
	}
	public void setChlText4(String chlText4) {
		this.chlText4 = chlText4;
	}
	public String getChlText5() {
		return chlText5;
	}
	public void setChlText5(String chlText5) {
		this.chlText5 = chlText5;
	}
	public String getChlText6() {
		return chlText6;
	}
	public void setChlText6(String chlText6) {
		this.chlText6 = chlText6;
	}
	public String getChlText7() {
		return chlText7;
	}
	public void setChlText7(String chlText7) {
		this.chlText7 = chlText7;
	}
	public String getChlText8() {
		return chlText8;
	}
	public void setChlText8(String chlText8) {
		this.chlText8 = chlText8;
	}
	public String getChlText9() {
		return chlText9;
	}
	public void setChlText9(String chlText9) {
		this.chlText9 = chlText9;
	}
	
	public void setChlText(int index,String chlText) {
		switch(index) {
		case 0:
			this.chlText1 = chlText;
			break;
		case 1:
			this.chlText2 = chlText;
			break;
		case 2:
			this.chlText3 = chlText;
			break;
		case 3:
			this.chlText4 = chlText;
			break;
		case 4:
			this.chlText5 = chlText;
			break;
		case 5:
			this.chlText6 = chlText;
			break;
		case 6:
			this.chlText7 = chlText;
			break;
		case 7:
			this.chlText8 = chlText;
			break;
		case 8:
			this.chlText9 = chlText;
			break;	
		}	
	}
	
	public String getChlText(int index) {
		switch(index) {
		case 0:
			return this.chlText1;
		case 1:
			return this.chlText2;
		case 2:
			return this.chlText3;
		case 3:
			return this.chlText4;
		case 4:
			return this.chlText5;
		case 5:
			return this.chlText6;
		case 6:
			return this.chlText7;
		case 7:
			return this.chlText8;
		case 8:
			return this.chlText9;	
		}
			return null;
	}
	
	
	public void setChlNo(int index,String chlNo) {
		switch(index) {
		case 0:
			this.chlNo1 = chlNo;
			break;
		case 1:
			this.chlNo2 = chlNo;
			break;
		case 2:
			this.chlNo3 = chlNo;
			break;
		case 3:
			this.chlNo4 = chlNo;
			break;
		case 4:
			this.chlNo5 = chlNo;
			break;
		case 5:
			this.chlNo6 = chlNo;
			break;
		case 6:
			this.chlNo7 = chlNo;
			break;
		case 7:
			this.chlNo8 = chlNo;
			break;
		case 8:
			this.chlNo9 = chlNo;
			break;	
		}	
	}
	
	public String getChlNo(int index) {
		switch(index) {
		case 0:
			return this.chlNo1;
		case 1:
			return this.chlNo2;
		case 2:
			return this.chlNo3;
		case 3:
			return this.chlNo4;
		case 4:
			return this.chlNo5;
		case 5:
			return this.chlNo6;
		case 6:
			return this.chlNo7;
		case 7:
			return this.chlNo8;
		case 8:
			return this.chlNo9;	
		}
			return null;
	}
	
	
	public String getChlNo1() {
		return chlNo1;
	}
	public void setChlNo1(String chlNo1) {
		this.chlNo1 = chlNo1;
	}
	public String getChlNo2() {
		return chlNo2;
	}
	public void setChlNo2(String chlNo2) {
		this.chlNo2 = chlNo2;
	}
	public String getChlNo3() {
		return chlNo3;
	}
	public void setChlNo3(String chlNo3) {
		this.chlNo3 = chlNo3;
	}
	public String getChlNo4() {
		return chlNo4;
	}
	public void setChlNo4(String chlNo4) {
		this.chlNo4 = chlNo4;
	}
	public String getChlNo5() {
		return chlNo5;
	}
	public void setChlNo5(String chlNo5) {
		this.chlNo5 = chlNo5;
	}
	public String getChlNo6() {
		return chlNo6;
	}
	public void setChlNo6(String chlNo6) {
		this.chlNo6 = chlNo6;
	}
	public String getChlNo7() {
		return chlNo7;
	}
	public void setChlNo7(String chlNo7) {
		this.chlNo7 = chlNo7;
	}
	public String getChlNo8() {
		return chlNo8;
	}
	public void setChlNo8(String chlNo8) {
		this.chlNo8 = chlNo8;
	}
	public String getChlNo9() {
		return chlNo9;
	}
	public void setChlNo9(String chlNo9) {
		this.chlNo9 = chlNo9;
	}
	

	public void setChl_Checked(int index,String chlNo_Check) {
		switch(index) {
		case 0:
			this.chlNo1_Checked = chlNo_Check;
			break;
		case 1:
			this.chlNo2_Checked = chlNo_Check;
			break;
		case 2:
			this.chlNo3_Checked = chlNo_Check;
			break;
		case 3:
			this.chlNo4_Checked = chlNo_Check;
			break;
		case 4:
			this.chlNo5_Checked = chlNo_Check;
			break;
		case 5:
			this.chlNo6_Checked = chlNo_Check;
			break;
		case 6:
			this.chlNo7_Checked = chlNo_Check;
			break;
		case 7:
			this.chlNo8_Checked = chlNo_Check;
			break;
		case 8:
			this.chlNo9_Checked = chlNo_Check;
			break;	
		}	
	}
	
	public String getChl_Checked(int index) {
		switch(index) {
		case 0:
			return this.chlNo1_Checked;
		case 1:
			return this.chlNo2_Checked;
		case 2:
			return this.chlNo3_Checked;
		case 3:
			return this.chlNo4_Checked;
		case 4:
			return this.chlNo5_Checked;
		case 5:
			return this.chlNo6_Checked;
		case 6:
			return this.chlNo7_Checked;
		case 7:
			return this.chlNo8_Checked;
		case 8:
			return this.chlNo9_Checked;	
		}
			return null;
	}

	
	public String getChlNo1_Checked() {
		return chlNo1_Checked;
	}
	public void setChlNo1_Checked(String chlNo1_Checked) {
		this.chlNo1_Checked = chlNo1_Checked;
	}
	public String getChlNo2_Checked() {
		return chlNo2_Checked;
	}
	public void setChlNo2_Checked(String chlNo2_Checked) {
		this.chlNo2_Checked = chlNo2_Checked;
	}
	public String getChlNo3_Checked() {
		return chlNo3_Checked;
	}
	public void setChlNo3_Checked(String chlNo3_Checked) {
		this.chlNo3_Checked = chlNo3_Checked;
	}
	public String getChlNo4_Checked() {
		return chlNo4_Checked;
	}
	public void setChlNo4_Checked(String chlNo4_Checked) {
		this.chlNo4_Checked = chlNo4_Checked;
	}
	public String getChlNo5_Checked() {
		return chlNo5_Checked;
	}
	public void setChlNo5_Checked(String chlNo5_Checked) {
		this.chlNo5_Checked = chlNo5_Checked;
	}
	public String getChlNo6_Checked() {
		return chlNo6_Checked;
	}
	public void setChlNo6_Checked(String chlNo6_Checked) {
		this.chlNo6_Checked = chlNo6_Checked;
	}
	public String getChlNo7_Checked() {
		return chlNo7_Checked;
	}
	public void setChlNo7_Checked(String chlNo7_Checked) {
		this.chlNo7_Checked = chlNo7_Checked;
	}
	public String getChlNo8_Checked() {
		return chlNo8_Checked;
	}
	public void setChlNo8_Checked(String chlNo8_Checked) {
		this.chlNo8_Checked = chlNo8_Checked;
	}
	public String getChlNo9_Checked() {
		return chlNo9_Checked;
	}
	public void setChlNo9_Checked(String chlNo9_Checked) {
		this.chlNo9_Checked = chlNo9_Checked;
	}	
	
	public int isChh_Checked() {
		return chh_Checked;
	}
	public void setChh_Checked(int chh_Checked) {
		this.chh_Checked = chh_Checked;
	}
	
	public int getChh_Checked() {
		return chh_Checked;
	}
	
	public int getSelfNo() {
		return selfNo;
	}
	public void setSelfNo(int selfNo) {
		this.selfNo = selfNo;
	}
	public int getPgNo() {
		return pgNo;
	}
	public void setPgNo(int pgNo) {
		this.pgNo = pgNo;
	}
	public String getSclNo1() {
		return sclNo1;
	}
	public void setSclNo1(String sclNo1) {
		this.sclNo1 = sclNo1;
	}
	public String getSclNo2() {
		return sclNo2;
	}
	public void setSclNo2(String sclNo2) {
		this.sclNo2 = sclNo2;
	}
	public String getSclNo3() {
		return sclNo3;
	}
	public void setSclNo3(String sclNo3) {
		this.sclNo3 = sclNo3;
	}
	public String getSclNo4() {
		return sclNo4;
	}
	public void setSclNo4(String sclNo4) {
		this.sclNo4 = sclNo4;
	}
	public String getSclNo5() {
		return sclNo5;
	}
	public void setSclNo5(String sclNo5) {
		this.sclNo5 = sclNo5;
	}
	public String getSclNo1_Checked() {
		return sclNo1_Checked;
	}
	public void setSclNo1_Checked(String sclNo1_Checked) {
		this.sclNo1_Checked = sclNo1_Checked;
	}
	public String getSclNo2_Checked() {
		return sclNo2_Checked;
	}
	public void setSclNo2_Checked(String sclNo2_Checked) {
		this.sclNo2_Checked = sclNo2_Checked;
	}
	public String getSclNo3_Checked() {
		return sclNo3_Checked;
	}
	public void setSclNo3_Checked(String sclNo3_Checked) {
		this.sclNo3_Checked = sclNo3_Checked;
	}
	public String getSclNo4_Checked() {
		return sclNo4_Checked;
	}
	public void setSclNo4_Checked(String sclNo4_Checked) {
		this.sclNo4_Checked = sclNo4_Checked;
	}
	public String getSclNo5_Checked() {
		return sclNo5_Checked;
	}
	public void setSclNo5_Checked(String sclNo5_Checked) {
		this.sclNo5_Checked = sclNo5_Checked;
	}
	public String getSclDate() {
		return sclDate;
	}
	public void setSclDate(String sclDate) {
		this.sclDate = sclDate;
	}
	public String getScl_photoName() {
		return scl_photoName;
	}
	public void setScl_photoName(String scl_photoName) {
		this.scl_photoName = scl_photoName;
	}
	public String getScl_photoPath() {
		return scl_photoPath;
	}
	public void setScl_photoPath(String scl_photoPath) {
		this.scl_photoPath = scl_photoPath;
	}
	public String getScl_Text() {
		return scl_Text;
	}
	public void setScl_Text(String scl_Text) {
		this.scl_Text = scl_Text;
	}
	public void setChecked(boolean isChecked) {
		// TODO Auto-generated method stub
		
	}

	
	
}
