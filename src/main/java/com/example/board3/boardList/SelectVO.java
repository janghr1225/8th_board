package com.example.board3.boardList;


public class SelectVO extends BoardVO{
	
	SelectVO(int boardNum, String userName, String title, String content, String creDate) {
		super(boardNum, userName, title, content, creDate);
	}
	
	private String type;	//select option(제목, 작성자)
	private String keyword;	//검색어
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

}
