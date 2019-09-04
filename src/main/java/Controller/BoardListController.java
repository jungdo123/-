package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Service.BoardListService;

@Controller
public class BoardListController {
	@Autowired
	private BoardListService BoardListService;
	@RequestMapping(value = "board_list", method = RequestMethod.GET)
	public String board_list(Model model, @RequestParam(value = "page" ,
				defaultValue = "1")	String page) { 
		return 
				BoardListService.boardList(model,page);
	}
	
	
}