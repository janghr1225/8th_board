package com.example.board3.boardList;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class BoardVO {
	
	private int boardNum;
	private String userName;
	private String title;
	private String content;
	private String creDate;
		
}
