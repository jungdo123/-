package Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Command.PwChangeCommand;
import Service.MemberModService;
import Service.NameChangeService;
import Service.PwChangeActService;
import Service.PwChangeService;
import Validator.ChangePwdCommandValidator;

@Controller
public class MemberModifyController {
	@Autowired
	private PwChangeService pwChangeService;
	@Autowired
	private PwChangeActService pca;
	
	@Autowired
	private NameChangeService ncs;
	
	
	@Autowired
	private MemberModService mms;

	@RequestMapping("/pwModify") // 비밀번호 변경 페이지 이동
	public String pwchange(Model model) {
		return "MemberView/pwchange1";
	}

	@RequestMapping("/pwcheck") // 비밀번호 확인
	public String submit(@RequestParam(value = "pw") String pw, HttpSession session) {
		String path = pwChangeService.pwChange(session, pw);
		return path;
	}

	@RequestMapping("/pwChangeAction") // 비밀번호 변경 최종 service
	public String pwchanAc(PwChangeCommand pwChangeCommand, Model model, HttpSession session, Errors errors) {
		String path = "";
		new ChangePwdCommandValidator().validate(pwChangeCommand, errors);
		if (errors.hasErrors())
			return "MemberView/pwchange2";
		path = pca.pwChange(session, pwChangeCommand, model);
		return path;
	}
	
	@RequestMapping("/nameChangeAction")
	public String nameChanAc(Model model, HttpSession session) {
		path = ncs.nameChange(session, model);
		return path;
	}
	
	@RequestMapping("/memberModify")
	public String memMod(Model model,HttpSession session) {
		String path = mms.getMember(model,session);
		return path;
	}
}
