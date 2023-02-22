package com.littlePirates.project.service;

import java.util.HashMap;
import java.util.List;

public interface IPagingService {
	
	public List<HashMap<String, Object>> getPagingList(HashMap<String, Object> params);
	
	public int getPagingListCnt(HashMap<String, Object> params);

}
