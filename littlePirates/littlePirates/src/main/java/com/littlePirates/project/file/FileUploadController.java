package com.littlePirates.project.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {
	//파일 업로드 폼 열기
	@RequestMapping("/fileUploadForm")
	public String fileUploadForm() {
		return "upload/fileUploadForm";
	}
	
	//(1) 1개 파일 업로드 
	@RequestMapping("/fileUpload")
	public String fileUpload(@RequestParam("uploadFile")MultipartFile file,
							Model model) throws  IOException {
	//	1.파일 저장 경로 설치	: C:/springWorkspace/upload (마지막에 / 있어야함)
		
	String uploadPath = "C:/springWorkspace/git_test/littlePirates/littlePirates/src/main/resources/static/files/";	
	
	//	2.원본 파일 이름 저장
	String originalFileName=file.getOriginalFilename();	
	
	//	3.파일 이름이 중복 되지 않도록 파일 이름 변경
	UUID uuid=UUID.randomUUID();
	String savedFileName=uuid.toString()+"_"+originalFileName;
	
	//	서버에 저장할 파일 이름 설정 : UUID 사용
		
	//	4.파일 (객체) 생성
	File sendFile=new File(uploadPath+savedFileName);
	
	//	5. 서버로 전송
	file.transferTo(sendFile);
	
	//	웹 브라우저에서 원본 파일명 출력 : Model로 지정
	model.addAttribute("originalFileName",originalFileName);
	
		return "checkList/checkList_Manner";
	}
	
	//upload 폴더에 이미지/오디오 파일 업로드
	@ResponseBody
	@RequestMapping("/allFileUpload")
	public String imageFileUpload(@RequestParam("chooseFile")MultipartFile file) throws IOException {
		
		//	1.파일 저장 경로 설정	: C:/springWorkspace/upload
		//마지막에 / 있어야함
	String uploadPath = "C:/springWorkspace/git_test/littlePirates/littlePirates/src/main/resources/static/files/";	
	
	//	2.원본 파일 이름 저장
	String originalFileName=file.getOriginalFilename();	
	
	//	3.파일 이름이 중복 되지 않도록 파일 이름 변경
	File sendFile=new File(uploadPath+originalFileName);
	//	4. 서버로 전송
	file.transferTo(sendFile);
		
		String result ="success";
		
		return result;
	}
	
	
	//이미지 파일 업로드할 페이지 열기
	@RequestMapping("/imageFileUploadForm")
	public String imageFileUploadForm() {
		return "upload/imageFileUpload";
	}
	
}
