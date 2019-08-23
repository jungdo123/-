package Controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Command.LoginCommand;
import Command.MemberJoinCommand;
import Command.PwChangeCommand;
import Service.MemberJoinService;
import Service.MemberLoginService;
import Service.MemberLogoutService;
import Service.MemberModService;
import Service.PwChangeActService;
import Service.PwChangeService;
import Validator.ChangePwdCommandValidator;

@Controller
public class MemberController {
	@Autowired
	private MemberJoinService memberJoinService;
	@Autowired
	private MemberLoginService memberLoginService;
	@Autowired
	private MemberLogoutService memberLogoutService;
	@Autowired
	private PwChangeService pwChangeService;
	@Autowired
	private PwChangeActService pca;
	@Autowired
	private MemberModService mms;

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
	public String logout(HttpSession session, HttpServletResponse response) {
		memberLogoutService.logout(session, response);
		return "redirect:main";
	}

	@RequestMapping("/mypage")
	public String mypage(Model model) {
		return "MemberView/mypage";
	}

	@RequestMapping("/pwModify")
	public String pwchange(Model model) {
		return "MemberView/pwchange1";
	}

	@RequestMapping("/pwcheck")
	public String submit(@RequestParam(value = "pw") String pw, HttpSession session) {
		String path = pwChangeService.pwChange(session, pw);
		return path;
	}

	@RequestMapping("/pwChangeAction")
	public String pwchanAc(PwChangeCommand pwChangeCommand, Model model, HttpSession session, Errors errors) {
		String path = "";
		new ChangePwdCommandValidator().validate(pwChangeCommand, errors);
		if (errors.hasErrors())
			return "MemberView/pwchange2";
		path = pca.pwChange(session, pwChangeCommand, model);
		return path;
	}
	
	@RequestMapping("memMod")
	public String memMod(Model model,HttpSession session) {
		String path = mms.getMmeber(model,session);
		return path;
	}
}
