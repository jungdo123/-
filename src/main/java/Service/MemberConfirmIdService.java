package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Repository.SessionRepository;
@Service
public class MemberConfirmIdService {
	@Autowired
	private SessionRepository sessionRepository;
	public void getSelectId(String id1, Model model) {
		String userId = sessionRepository.getSelectId(id1);
		model.addAttribute("userId", id1);
		if(userId == null) {
			System.out.println("aaaa");
			model.addAttribute("msg", "사용 가능한 ID입니다.");
			model.addAttribute("num", 2);
		}else {
			model.addAttribute("msg", "이미 사용중인 ID입니다.");
			model.addAttribute("num", 1);
		}
	}
}
