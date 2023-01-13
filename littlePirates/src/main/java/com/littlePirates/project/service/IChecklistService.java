package com.littlePirates.project.service;

import java.util.ArrayList;

import com.littlePirates.project.model.ChecklistVO;

public interface IChecklistService {
	public void updateCheckList(ChecklistVO Checked);
	public ArrayList<ChecklistVO> checklistInfo();
}
