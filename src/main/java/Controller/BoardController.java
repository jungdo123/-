package Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import Command.BoardJoinCommand;
import Service.BoardJoinService;
@Controller
public class BoardController {
	@Autowired
	private BoardJoinService boardJoinService;
	@RequestMapping(value = "/BoardJoin")
	public String joinBoard(Model model) {
				model.addAttribute("boardJoinCommand", new BoardJoinCommand());
				System.out.println("aaaaa");
				return "BoardView/boardForm";
			} 
	
	
	@RequestMapping(value = "/BoardJoinAction" , method = RequestMethod.POST)
	public String boardJoinAction(Model model, 
			BoardJoinCommand boardJoinCommand, HttpServletRequest request) {
		System.out.println("boardJoinAction   " + boardJoinCommand.getDoSi10());
		String path="redirect:BoardJoin";
		try {
		   path = 
				boardJoinService.boardInsert(model, boardJoinCommand, request);
		}catch(Exception e) { 
			e.printStackTrace();
		}
		return path;
	}
	}

