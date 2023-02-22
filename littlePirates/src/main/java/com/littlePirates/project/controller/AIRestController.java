package com.littlePirates.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.littlePirates.project.service.ChatbotService;

@RestController
public class AIRestController {
	
	private ChatbotService chatService;
	
	@Autowired
	public AIRestController(ChatbotService chatService) {
		
		this.chatService = chatService;
	}
	
	// 챗봇
	@RequestMapping("/chatbot")
	public String chatbot(@RequestParam("message") String message) {
		String result = chatService.main(message); // 질문 메시지 전달하고 답변 텍스트 받아옴
		return result;
	}
	
}
