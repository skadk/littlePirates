package com.littlePirates.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.littlePirates.project.model.FleaMarketCommentVO;
import com.littlePirates.project.model.FleaMarketVO;
import com.littlePirates.project.service.FleaMarketService;

@Controller
public class FleaMarketController {

	@Autowired
	FleaMarketService service;

	// 게시판 리스트(productlistall)
	@RequestMapping("/fleaMarket")
	public String fleaMarket(Model model) {
		
		// ProductService의 listAllProduct() 호출 (ProductService의 객체 필요 : DI 설정필요)
		ArrayList<FleaMarketVO> flList = service.listAllBoard();
		model.addAttribute("flList", flList);
		
		return "menu/board/fleaMarket";
	}

	// 게시물 글 작성 폼 열기 fleaMarket/fleaMarketWriteForm'
	@RequestMapping("/fleaMarket/fleaMarketWriteForm")
	public String fleaMarketWriteForm() {

		return "menu/board/fleaMarketWrite";

	}

	// 상품 등록
	@RequestMapping("/fleaMarket/fleaMarketWrite")
	public String fleaMarketWrite(@RequestParam("fileUpload") MultipartFile file, FleaMarketVO vo, HttpSession session)
			throws IOException {

		System.out.println(vo.getFlTitle());
		// 로그인 한 경우에는 sid 가져오는데
		// 지금 로그인 안 한 상태에서 테스트할 경우 임의로 memId 값 설정
		String memId = (String)session.getAttribute("sid");
		//String memId = "hong";

		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload/
		// 마지막에 / 있어야 함
		String uploadPath = "C:/springWorkspace/pirates_images/";

		// 2. 원본 파일 이름 저장
		String originalFileName = memId + "_" + file.getOriginalFilename();

		// 3. 파일 (객체) 생성
		File sendFile = new File(uploadPath + originalFileName);

		// 4. 서버로 전송
		file.transferTo(sendFile);

		// 파일 이미지명 저장
		vo.setFlImageName(originalFileName);
		vo.setMemId(memId);

		// DB에 insert 하기 위한 서비스 호출
		service.insertFleaMarket(vo);

		return "redirect:/fleaMarket";

	}

	// 게시물 상세정보
	@RequestMapping("/fleaMarket/fleaMarketText/{flNo}")
	public String fleaMarketText(@PathVariable int flNo, Model model, HttpSession session) {

		// 서비스에게 상품번호 전달하고 상품 정보 받아옴
		FleaMarketVO frd = service.fleaMarketText(flNo);
		model.addAttribute("frd", frd);
		
		// 댓글 정보 불러오기
		ArrayList<FleaMarketCommentVO> flcList = service.listAllFlCmt(flNo);
		model.addAttribute("flcList", flcList);

		String memId = (String)session.getAttribute("sid"); // 배포 시 사용
		model.addAttribute("sid", memId);

		return "menu/board/fleaMarketText";

	}

	// 상품 정보 수정 폼 열기
	// (수정할 데이터를 미리 출력하기 위해 상품 상세 정보 결과 출력)
	@RequestMapping("/fleaMarket/fleaMarketUpdateForm/{flNo}")
	public String fleaMarketUpdateForm(@PathVariable int flNo,
			  						Model model) {
		// 서비스에게 상품번호 전달하고 상품 정보 받아옴
		FleaMarketVO frd = service.fleaMarketText(flNo);
		model.addAttribute("frd", frd);
		return "menu/board/fleaMarketUpdateForm";
	}

	// 상품 정보 수정 : 수정된 데이터 DB에 저장
	@RequestMapping("/fleaMarket/fleaMarketUpdate")
	public String updateFleaMarket(@RequestParam("fileUpload") MultipartFile file, FleaMarketVO frd, HttpSession session) 
			throws IOException{
		System.out.println("title : " + frd.getFlTitle());
		System.out.println("no : " + frd.getFlNo());
		// 로그인 한 경우에는 sid 가져오는데
		// 지금 로그인 안 한 상태에서 테스트할 경우 임의로 memId 값 설정
		String memId = (String)session.getAttribute("sid");
		//String memId = "hong"; // 현재 내  member테이블에는 abcd 있음

		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload/
		// 마지막에 / 있어야 함
		String uploadPath = "C:/springWorkspace/pirates_images/";

		// 2. 원본 파일 이름 저장
		String originalFileName = memId + "_" + file.getOriginalFilename();

		// 3. 파일 (객체) 생성
		File sendFile = new File(uploadPath + originalFileName);

		// 4. 서버로 전송
		file.transferTo(sendFile);

		// 파일 이미지명 저장
		frd.setFlImageName(originalFileName);
		frd.setMemId(memId);
		
		service.updateFleaMarket(frd);		
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩  
		return "redirect:/fleaMarket"; // -> 위에 있는 @RequestMapping("/product/productListAll")
	}
	

	// 상품 정보 삭제 
	// 삭제할 상품의 상품번호 전달 받음 : @PathVariable 사용
	@RequestMapping("/fleaMarket/deletefleaMarket/{flNo}")
	public String deleteFleaMarket(@PathVariable int flNo) {
		service.deleteFleaMarket(flNo);
		// 데이터 삭제 후 상품 조회 화면으로 포워딩return
		return "redirect:/fleaMarket";

	}
	//댓글작서폼열기
	@RequestMapping("/fleaMarket/fleaMarketComment")
	public String fleaMarketCForm(FleaMarketCommentVO flc) {
		
		System.out.println(flc.getFlcText());
		service.insertFleaMarketComment(flc);
		
		
		return "redirect:/fleaMarket/fleaMarketText/"+flc.getFlNo();

	}

	
	
	
	
	
	
	
	
	
}
