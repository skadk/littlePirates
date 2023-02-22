package com.littlePirates.project.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.littlePirates.project.model.BoardVO;
import com.littlePirates.project.model.FleaMarketVO;
import com.littlePirates.project.service.BoardService;


@Controller
public class BoardController {
	/*********************** 보드리스트 ***************************/
	
	
	@RequestMapping("/board")
	public String board(Model model) {
		ArrayList<BoardVO> boardList = bservice.listAllBoard();
		model.addAttribute("boardList", boardList);
		return "menu/board/board";
	}
	
	@RequestMapping("/board/boardText/{brdNo}")
	public String boardText(@PathVariable int brdNo, Model model) {
		
		// 서비스에게 상품번호 전달하고 상품 정보 받아옴
		BoardVO brd = bservice.boardText(brdNo);
		model.addAttribute("brd", brd);
		
		return "menu/board/boardText";
	}

	@RequestMapping("/anonymusBoard")
	public String anonymusBoard(Model model) {
		ArrayList<BoardVO> boardList = bservice.listAllBoard();
		model.addAttribute("boardList", boardList);
		
		return "menu/board/anonymusBoard";
	}

	@RequestMapping("/anonymusBoard/anonymusBoardText")
	public String anounymusBoardText() {

		return "menu/board/anonymusBoardText";

	}

	private BoardService bservice;
	/* private SummernoteService sservice; */
	
	@Autowired
	public BoardController(BoardService bservice) {
		this.bservice = bservice;
		/* this.sservice = sservice; */
	}
	
	// 글쓰기
	@RequestMapping("/board/brdWrite")
	public String boardWrite(@RequestParam String brdTitle, 
							 @RequestParam String brdText, 
							 Model model, HttpSession session) {
		
			String memId = "abc";
			
			bservice.insertBoardText(memId, brdTitle, brdText);
			
			ArrayList<BoardVO> brdList = bservice.boardView(memId);
			model.addAttribute("brdList", brdList);
			
			return "menu/board/boardText";
	}
	
	
	@PostMapping(value="/uploadSummernoteImageFile", produces = "application/json")
	@ResponseBody
	public JsonObject uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {
		
		JsonObject jsonObject = new JsonObject();
		
		String fileRoot = "C:\\springWorkspace\\summernoteImg\\";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		File targetFile = new File(fileRoot + savedFileName);	
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			jsonObject.addProperty("url", "/summernoteImage/"+savedFileName);
			jsonObject.addProperty("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonObject;
	}
}
