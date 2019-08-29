package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.AuthInfo;
import Command.EmailChangeCommand;
import Repository.SessionRepository;

@Service
public class EmailChangeService {
	@Autowired
	private SessionRepository sessionRepository;
	public String nameChange(EmailChangeCommand emailChangeCommand, HttpSession session, Model model) {
		// TODO Auto-generated method stub
		emailChangeCommand.setMemberId(((AuthInfo)session.getAttribute("memid")).getId1());
		sessionRepository.emailChange(emailChangeCommand);
		String path = "redirect:nameMod";
		return path;
	}

}
