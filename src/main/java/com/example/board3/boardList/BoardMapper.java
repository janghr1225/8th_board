package com.example.board3.boardList;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	List<BoardVO> getList();

	BoardVO getDetail(Integer boardNum);

	void insertBoard(BoardVO boardVO);

	String updateBoard(BoardVO boardVO);

	void deleteBoard(Integer boardNum);

	List<BoardVO> searchTitle(String title);

	
}
