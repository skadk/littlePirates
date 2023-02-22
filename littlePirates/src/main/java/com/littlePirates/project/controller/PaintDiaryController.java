package com.littlePirates.project.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class PaintDiaryController {
	@ResponseBody
	@RequestMapping("/paintDiary/paintFileUpload")
	public String paintFileUpload(@RequestParam("paintFile") MultipartFile file) throws IOException {
		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload/
		// 마지막에 / 있어야 함
		String uploadPath = "/usr/local/project/pirates_upload/";
		//String uploadPath = "/usr/littlePiratesUpload/";
		// 2. 원본 파일 이름 저장
		String originalFileName = file.getOriginalFilename();
		// 3. 파일 (객체) 생성
		File sendFile = new File(uploadPath + originalFileName);
		// 4. 서버로 전송
		file.transferTo(sendFile);
		
		String result = "success";
		
		return result;
	}
	
	@RequestMapping("/paintDiaryWrite")
	public String paintDiaryWrite() {
		
		return "menu/paintDiary/paintDiaryWrite";
	}

}
