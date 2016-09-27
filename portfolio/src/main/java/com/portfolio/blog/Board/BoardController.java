package com.portfolio.blog.Board;

import org.springframework.stereotype.Controller;

@Controller
public class BoardController {
	
	
	
	
	// 리스트
	public String boardList(){
		
		return "board/list";
	}
	
	
	
	
	// 글쓰기 및 수정
	public String board(){
		
		
		return "board/write";
	}
	
	// 글저장  및 수정 저장
	public String boardcreate(){
		
		return "redirect:/boardlist";
	}
	
	public String boardDelete(){
		
		
		
		return "redirect:/boardlist";
	}
	
	

	

}
