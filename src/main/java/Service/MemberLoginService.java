package Service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.parser.Cookie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.AuthInfo;
import Command.LoginCommand;
import Model.DTO.Member;
import Repository.SessionRepository;

@Service
public class MemberLoginService {
	@Autowired
	private SessionRepository sessionRepository;

	public String loginAct(Model model, LoginCommand loginCommand, HttpSession session, HttpServletResponse response) {
		// TODO Auto-generated method stub
		Member member = sessionRepository.userCheck1(loginCommand.getId1(), loginCommand.getPw());
		int result = 0;
		if (member == null) {
			result = 1;
		} else {
			if (member.getMemberPw().equals(loginCommand.getPw())) {
				result = 3;
				AuthInfo authInfo = new AuthInfo(member.getMemberId(), member.getEmail(), member.getMemberName());
				session.setAttribute("memid", authInfo);
			} else {
				result = 2;
			}
		}
		model.addAttribute("result", result);
		return "main/loginPro";
	}

	public String loginPro(Model model, LoginCommand loginCommand, HttpSession session, HttpServletResponse response) {
		Member member = sessionRepository.userCheck(loginCommand.getId1(), loginCommand.getPw());
		if (member == null) {
			model.addAttribute("msg111", "계정이 존재하지 않습니다.");
		} else {
			AuthInfo authInfo = new AuthInfo(member.getMemberId(), member.getEmail(), member.getMemberName());
			session.setAttribute("memid", authInfo);
		}
		return "redirect:main";
	}
}
