package Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Command.EmailChangeCommand;
import Command.PwChangeCommand;
import Service.BirthModService;
import Service.EmailChangeService;
import Service.EmailModService;
import Service.MemberModService;
import Service.NameChangeService;
import Service.NameModService;
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
	@Autowired
	private NameModService nms;
	@Autowired
	private BirthModService bms;
	@Autowired
	private EmailModService ems;
	@Autowired
	private EmailChangeService ecs;

	@RequestMapping("/memberModify")
	public String memMod(Model model, HttpSession session) {
		String path = mms.getMember(model, session);
		return path;
	}

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

	@RequestMapping("/nameMod") // 기존정보 출력 페이지 (view가 열립니다.)
	public String nameMod(Model model, HttpSession session) {
		String path = nms.getMember(model, session);
		return path;
	}

	@RequestMapping("/nameChangeCheck") // 정보수정 페이지
	public String nmChange(Model model, HttpSession session) {
		String path = nms.getMember2(model, session);
		return path;
	}

	@RequestMapping("/nameChangeAction")
	public String nameChanAc(@RequestParam(value = "rename") String rename, Model model, HttpSession session) {
		String path = "";
		path = ncs.nameChange(rename, session, model);
		return path;
	}

	@RequestMapping("/birMod") // 기존정보 출력 페이지 (view가 열립니다.)
	public String birMod(Model model, HttpSession session) {
		String path = bms.getMember(model, session);
		return path;
	}

	@RequestMapping("/emailMod") // 기존정보 출력 페이지 (view가 열립니다.)
	public String emailMod(Model model, HttpSession session) {
		String path = ems.getMember(model, session);
		return path;
	}

	@RequestMapping("/emailChangeCheck") // 정보수정 페이지
	public String emChange(Model model, HttpSession session) {
		String path = ems.getMember2(model, session);
		return path;
	}

	@RequestMapping("/emailChangeAction")
	public String emailChanAc(EmailChangeCommand emailChangeCommand, Model model, HttpSession session) {
		String path = "";
		path = ecs.nameChange(emailChangeCommand, session, model);
		return path;
	}

}
