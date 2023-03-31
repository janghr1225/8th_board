package com.example.board3.boardList;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	List<BoardVO> getList();

	BoardVO getDetail(Integer boardNum);

	void insertBoard(BoardVO boardVO);

	void updateBoard(BoardVO boardVO);

	void deleteBoard(Integer boardNum);

	int deleteMulti(ArrayList<Integer> boardNum);

	List<BoardVO> searchList(BoardVO boardVO);
	



	
}
