package Service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String path = null;
		Member member = sessionRepository.userCheck(loginCommand.getId1(), loginCommand.getPw());
		if (member == null) {
			model.addAttribute("msg111", "계정이 존재하지 않습니다.");
		} else {
			/*AuthInfo authInfo = new AuthInfo(member.getMemberId(), member.getEmail(), member.getMemberName());
			session.setAttribute("memid", authInfo);
		}*/
			if (member.getMemberGrade() == 0) {
				System.out.println("관리자");
				AuthInfo authInfo = new AuthInfo(member.getMemberId(), member.getEmail(), member.getMemberName());
				session.setAttribute("memid", authInfo);
				System.out.println("관리자 로그인입니다.");
				path = "ManagerView/main";
			} else if (member.getMemberGrade() == 1) {
				System.out.println("일반회원");
				AuthInfo authInfo = new AuthInfo(member.getMemberId(), member.getEmail(), member.getMemberName());
				session.setAttribute("memid", authInfo);
				path = "redirect:main";
			} else if (member.getMemberGrade() == 2) {
				System.out.println("기업회원");
				AuthInfo authInfo = new AuthInfo(member.getMemberId(), member.getEmail(), member.getMemberName());
				session.setAttribute("memid", authInfo);
				path = "redirect:main";
			}
		}
		System.out.println(path+"결과문의 path입니다.");
		return path;
	}
}
