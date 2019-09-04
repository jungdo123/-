package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.Board;
import Model.DTO.Member;
import Repository.SessionRepository;

@Service
public class BoardListService {
	@Autowired
	private SessionRepository sessionRepository;
	public String boardList(Model model, String page) {
		int page1 = Integer.parseInt(page);
		int limit = 10;
		List<Board> list = sessionRepository.getBoardList(page1,limit);
		
		
		
		int listCount = sessionRepository.getBoardListCount();
		int maxPage = (int)((double)listCount / limit + 0.95);
		int startPage = (int)(((double)page1 / 10 + 0.9 ) -1) * 10 +1;
		int endPage = startPage + 10 -1;
		
		if(endPage > maxPage)endPage= maxPage;
		
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		
		model.addAttribute("endPage", endPage);
		model.addAttribute("page", page1);
		model.addAttribute("listcount", listCount);
		model.addAttribute("bList", list);
		System.out.println("���꽠"+list.get(0).getItemImg());
	
		return "BoardView/boardList";
	}
}
