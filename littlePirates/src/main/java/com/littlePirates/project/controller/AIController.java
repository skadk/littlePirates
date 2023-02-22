package com.littlePirates.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.littlePirates.project.service.ChatbotService;

@Controller
public class AIController {

	private ChatbotService chatService;
	
	// 생성자 기반 DI (의존성 주입)
	@Autowired
	public AIController(ChatbotService chatService) {
		
		this.chatService = chatService;
	}

	@RequestMapping("/chatbotForm")
	public String chatbotForm() {
		
		return "chatbot/chatbotForm";
	}

}
