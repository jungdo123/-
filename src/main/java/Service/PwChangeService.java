package Service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Command.AuthInfo;
import Model.DTO.Member;
import Repository.SessionRepository;

@Service
public class PwChangeService {
	@Autowired
	private  SessionRepository sessionRepository;
	public  String pwChange(HttpSession session, String pw) {
		// TODO Auto-generated method stub
		AuthInfo ai = (AuthInfo)session.getAttribute("memid");
		String id1 = ai.getId1();
		Member member = sessionRepository.userCheck(id1, pw); // db에서 확인하여 가져오는 것
		String path = "";
		if(member != null) {
			path = "MemberView/pwchange2";
		}else {
			path = "MemberView/pwchange1";
		}
		return path;
	}

}
