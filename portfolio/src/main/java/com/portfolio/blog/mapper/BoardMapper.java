package com.portfolio.blog.mapper;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

import com.portfolio.blog.Board.BoardDTO;

@Configuration
@MapperScan("org.mybatis.spring.sample.mapper")
public interface BoardMapper {
	
	
	public List<BoardDTO> Boardlist();
	
	public void BoardCreate(BoardDTO dto);
	
	public void BoardDelete(int boardnum);
	
	public void BoardUpdate(BoardDTO dto);
	
	public BoardDTO Boardselect(int boardnum);
}
