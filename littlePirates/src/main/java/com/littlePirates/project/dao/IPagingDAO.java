package com.littlePirates.project.dao;

import java.util.HashMap;
import java.util.List;

public interface IPagingDAO {
	
	public List<HashMap<String, Object>> getPagingList(HashMap<String, Object> params);
	
	public int getPagingListCnt(HashMap<String, Object> params);
}
