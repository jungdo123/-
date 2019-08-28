package Service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.parser.Cookie;
import org.springframework.beans.factory.annotation.Autowired;

import Command.AuthInfo;
import Repository.SessionRepository;


public class MemberDeleteService {
	@Autowired
	private SessionRepository sr;
	public String memberDeleteAct(HttpSession session, String pw,
			HttpServletResponse response) {
		//String id1 = (String)session.getAttribute("memid");
		String id1 = ((AuthInfo) session.getAttribute("memid")).getId1();
		int result = sr.memberDel(id1,pw);
		String path = "";
		if(result == 0) {
			path = "redirect:memDel?num=1";
		}else {
			
			session.invalidate();
			
			path = "redirect:main";
		}return path;
	}
}
