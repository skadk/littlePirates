package com.littlePirates.project.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.littlePirates.project.dao.IKcreviewDAO;
import com.littlePirates.project.model.KcreviewVO;

@Service
public class KcreviewService implements IKcreviewService {
	@Autowired
	@Qualifier("IKcreviewDAO")
	private IKcreviewDAO dao;

	@Override
	public ArrayList<KcreviewVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public void write(KcreviewVO kcr) {
		// TODO Auto-generated method stub
		dao.write(kcr);
	}
	

}
