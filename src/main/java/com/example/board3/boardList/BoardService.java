package com.example.board3.boardList;

import java.util.ArrayList;
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

	public void updateBoard(BoardVO boardVO) {
		boardMapper.updateBoard(boardVO);
	}

	public void deleteBoard(Integer boardNum) {
		boardMapper.deleteBoard(boardNum);
	}
	
	public int deleteMulti(ArrayList<Integer> boardNum) {
		return boardMapper.deleteMulti(boardNum);
	}

	public List<BoardVO> searchList(BoardVO boardVO) {
		return boardMapper.searchList(boardVO);
	}


}
