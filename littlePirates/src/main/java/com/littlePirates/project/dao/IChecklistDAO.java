package com.littlePirates.project.dao;

import java.util.ArrayList;

import com.littlePirates.project.model.ChecklistVO;

public interface IChecklistDAO {
	public void updateCheckList(ChecklistVO Checked);

	public ArrayList<ChecklistVO> checklistInfo();
}
