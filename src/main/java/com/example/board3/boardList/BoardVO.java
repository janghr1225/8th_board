package com.example.board3.boardList;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class BoardVO {
	
	private int boardNum;
	private String userName;
	private String title;
	private String content;
	private String creDate;
		
}
