package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Command.AuthInfo;
import Model.DTO.Member;
import Repository.SessionRepository;

public class MemberModService {
	@Autowired
	private SessionRepository sessionRepository;

	public String getMember(Model model, HttpSession session) {
		String id1 = ((AuthInfo) session.getAttribute("memid")).getId1();
		Member member = sessionRepository.selectMember(id1);
		String path = null;
		if (member == null) {
			path = "redirect:main";
		} else {
			path = "MemberView/memberMod";
		}
		model.addAttribute("member12", member);
		return path;
	}
}
