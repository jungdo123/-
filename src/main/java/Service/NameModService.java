package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.AuthInfo;
import Model.DTO.Member;
import Repository.SessionRepository;

@Service
public class NameModService {
	@Autowired
	private SessionRepository sessionRepository;

	public String getMember(Model model, HttpSession session) {
		String id1 = ((AuthInfo) session.getAttribute("memid")).getId1();
		Member member = sessionRepository.selectMember(id1);
		model.addAttribute("member12", member);
		String path = "MemberView/nameView";
		return path;
	}
	public String getMember2(Model model, HttpSession session) {
		String id1 = ((AuthInfo) session.getAttribute("memid")).getId1();
		Member member = sessionRepository.selectMember(id1);
		model.addAttribute("member12", member);
		String path = "MemberView/nameChange";
		return path;
	}
}
