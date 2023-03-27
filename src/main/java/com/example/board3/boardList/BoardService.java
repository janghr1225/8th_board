package com.example.board3.boardList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper boardMapper;
	
	public List<BoardVO> getList() {
		List<BoardVO> list = boardMapper.getList();
		return list;
	}

	public BoardVO getDetail(Integer boardNum) {
		BoardVO boardVO = boardMapper.getDetail(boardNum);
		return boardVO;
	}

	public void insertBoard(BoardVO boardVO) {
		boardMapper.insertBoard(boardVO);		
	}

	public String updateBoard(BoardVO boardVO) {
		return boardMapper.updateBoard(boardVO);
		//return boardVO;
	}

	public void deleteBoard(Integer boardNum) {
		boardMapper.deleteBoard(boardNum);
	}

	public List<BoardVO> searchTitle(String title) {
		return boardMapper.searchTitle(title);
	}

}
