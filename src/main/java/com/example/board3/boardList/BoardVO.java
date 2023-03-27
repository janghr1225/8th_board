package com.example.board3.boardList;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private int boardNum;
	private String userName;
	private String title;
	private String content;
	private Date creDate;
		
}
