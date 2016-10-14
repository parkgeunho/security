package com.portfolio.blog.Board;



import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.portfolio.blog.mapper.BoardMapper;


@Controller
@RequestMapping("board")
public class BoardController {
	
	
	// 리스트
	public String boardList(){
		
		return "board/list";
	}
	
	
	
	
	// 글쓰기 및 수정
	@RequestMapping(value="form")
	public String board(){
		
		
		return "board/test";
	}
	
	// 글저장  및 수정 저장
	@RequestMapping(value="/save" ,method = RequestMethod.POST)
	public String boardcreate(BoardDTO dto){
		System.out.println(dto.getContent());
		System.out.println(dto.getSubject());
		dto.setWriter("test");
		
		System.out.println(dto.getWriter());
		
		return "redirect:/boardlist";
	}
	
	public String boardDelete(){
		
		
		
		return "redirect:/boardlist";
	}
	
	

	

}
