package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.AuthInfo;
import Command.PwChangeCommand;
import Repository.SessionRepository;

@Service
public class PwChangeActService {
	@Autowired
	private SessionRepository sessionRepository;
	public String pwChange(HttpSession session, PwChangeCommand pwChangeCommand, Model model) {
		// TODO Auto-generated method stub
		pwChangeCommand.setMemberId(((AuthInfo)session.getAttribute("memid")).getId1());
		int result = sessionRepository.pwChange(pwChangeCommand);
		String path = "";
		if(result == 0) {
			path = "redirect:pwchange2";
		}else {
			path = "redirect:main";
		}
		return path;
	}

}
