package Controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Command.LoginCommand;
import Command.MemberJoinCommand;
import Service.MemberJoinService;
import Service.MemberLoginService;
import Service.MemberLogoutService;


@Controller
public class MemberController{
	@Autowired
	private MemberJoinService memberJoinService;
	@Autowired
	private MemberLoginService memberLoginService;
	@Autowired
	private MemberLogoutService memberLogoutService;

	@RequestMapping("/moveReg")
	public String terms(Model model) {
		model.addAttribute("memberJoinCommand", new MemberJoinCommand());
		return "MemberView/memberJoin";
	}

	@RequestMapping(value = "/MemberJoinAction", method = RequestMethod.POST)
	public String memberJoinAction(Model model, MemberJoinCommand memberJoinCommand) {
		String path = "";
		try {
			path = memberJoinService.memberInsert(model, memberJoinCommand);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return path;
	}

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("loginCommand", new LoginCommand());
		return "MemberView/memberLogin";
	}

	@RequestMapping("/MemberLogAction")
	public String loginAction(Model model, LoginCommand loginCommand, HttpSession session,
			HttpServletResponse response) {
		String path = memberLoginService.loginPro(model, loginCommand, session, response);
		return path;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session,
			HttpServletResponse response) {
		memberLogoutService.logout(session, response);
		return "redirect:main";
	}
}
