package com.example.board3.boardList;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 전체조회
	@GetMapping("/list")
	public String getBoard(Model model) {
		List<BoardVO> boardVO = boardService.getList();
		model.addAttribute("board", boardVO);
		return "home";
	}

	// 상세
	@GetMapping("/list/{boardNum}")
	public String boardDetail(Model model, @PathVariable("boardNum") Integer boardNum) {
		BoardVO boardVO = boardService.getDetail(boardNum);
		model.addAttribute("boardVO", boardVO);
		return "boardDetail";
	}

	// 등록
	@PostMapping("/insert")
	public String insertBoard(@RequestBody BoardVoInsert boardVoInsert) {
		BoardVO boardVO = BoardVO.builder()
				.userName(boardVoInsert.getUserName())
				.content(boardVoInsert.getContent())
				.title(boardVoInsert.getTitle())
				.creDate(LocalDateTime.now().toString())
				.build();
		
		boardService.insertBoard(boardVO);
		return "home";
	}
	@GetMapping("/insertPopup")
	public String popupInsert() {
		return "insertBoard";
	}

	// 수정
	@GetMapping("/update/{boardNum}") 
	public String updateBoard(Model model, @PathVariable("boardNum") Integer boardNum) { 
		BoardVO boardVO =  boardService.getDetail(boardNum);
		model.addAttribute("boardVO", boardVO);
		return "updateBoard"; 
	}
	@PostMapping("/update") 
	public String updateBoard(BoardVO boardVO) { 
		boardService.updateBoard(boardVO); 
		return "boardDetail"; 
	}
	@GetMapping("/updatePopup/{boardNum}")
	public String popupUpdate(Model model, @PathVariable("boardNum") Integer boardNum) {
		BoardVO boardVO = boardService.getDetail(boardNum);
		model.addAttribute("boardVO", boardVO);
		return "updateBoard";
	}

	// 삭제
	@GetMapping("/delete/{boardNum}")
	public String deleteBoard(@PathVariable("boardNum") Integer boardNum) {
		boardService.deleteBoard(boardNum);
		return "redirect:/board/list"; 
	}
	//다중 삭제	//to-do
	@PostMapping("/delete")
	public String deleteMulti(HttpServletRequest request) {
		
		String[] multi = request.getParameterValues("valueArr");
		int size = multi.length;
		
		for(int i=0; i<size; i++) {
			boardService.deleteMulti(multi[i]);
		}
		return "redirect:/board/list";
	}
	
	//검색	//to-do
//	@GetMapping("/search")
//	public String searchTitle(@RequestParam(defaultValue="title") String title, Model model){
//		List<BoardVO> boardVO = boardService.searchTitle(title);
//		model.addAttribute("boardVO",boardVO);
//		return "home";
//	}

}
