package com.portfolio.blog.Board;

public class BoardDTO {
	
	private String boardNum; // 게시물 번호
	private String subject; // 게시물 제목
	private String content; // 게시물 내용
	private String writer; // 게시물 작성자
	private String writedate; // 게시물 작성일자
	private String readcount; // 조회수 
	private String status; // 상태 [ 삭제 , 블라인드  , 정상 ]  
	private String votecount; //추천 수
	
	private String parent; // 답글 부모값
	private String depth; // 깊이
	private int boardorder; // 순서
	
	
	
	public String getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(String boardNum) {
		this.boardNum = boardNum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getReadcount() {
		return readcount;
	}
	public void setReadcount(String readcount) {
		this.readcount = readcount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getVotecount() {
		return votecount;
	}
	public void setVotecount(String votecount) {
		this.votecount = votecount;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}
	public String getDepth() {
		return depth;
	}
	public void setDepth(String depth) {
		this.depth = depth;
	}
	public int getBoardorder() {
		return boardorder;
	}
	public void setBoardorder(int boardorder) {
		this.boardorder = boardorder;
	}
	
	
	
}
