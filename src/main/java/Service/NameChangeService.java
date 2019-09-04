package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.AuthInfo;
import Repository.SessionRepository;

@Service
public class NameChangeService {
	@Autowired
	private SessionRepository sessionRepository;
	public String nameChange(String rename, HttpSession session, Model model) {
		// TODO Auto-generated method stub
		String memid = ((AuthInfo)session.getAttribute("memid")).getId1();
		sessionRepository.nameChange(memid, rename);
		String path = "redirect:memberModify";
		return path;
	}

}
