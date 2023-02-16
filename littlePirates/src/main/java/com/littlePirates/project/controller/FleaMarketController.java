package com.littlePirates.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.littlePirates.project.model.FleaMarketVO;
import com.littlePirates.project.service.FleaMarketService;

@Controller
public class FleaMarketController {

	@Autowired
	FleaMarketService service;

	@RequestMapping("/fleaMarket")
	public String fleaMarket(Model model) {
		// ProductService의  listAllProduct() 호출 (ProductService의 객체 필요 : DI 설정필요)
		ArrayList<FleaMarketVO> flList = service.listAllBoard();
		model.addAttribute("flList", flList);
		return "menu/board/fleaMarket";
	}
	//게시물 글작성
	@RequestMapping("/fleaMarket/fleaMarketWrite")
	public String fleaMarketWrite(@RequestParam("fileUpload") MultipartFile file, FleaMarketVO vo, HttpSession session)
			throws IOException {

		System.out.println(vo.getFlTitle());
		// 로그인 한 경우에는 sid 가져오는데
		// String memId = (String)session.getAttribute("sid");
		// 지금 로그인 안 한 상태에서 테스트할 경우 임의로 memId 값 설정
		String memId = "hong";

		// 1. 파일 저장 경로 설정 : C:/springWorkspace/upload/
		// 마지막에 / 있어야 함
		String uploadPath = "C:/springWorkspace/upload/";

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
	//게시물 상세정보
	@RequestMapping("/fleaMarket/fleaMarketText")
	public String fleaMarketText() {

		/* Service.FleaMarket(prd); */

		return "menu/board/fleaMarketText";
	}
}
