package Service;

import org.apache.tomcat.util.json.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.MemberJoinCommand;
import Model.DTO.Member;
import Repository.SessionRepository;
@Service
public class MemberJoinService {
	@Autowired
	private SessionRepository sessionRepository;
	@Autowired
	private Member member;
	
	private String path;
	public void setMember(Member member) {
		this.member = member;
	}
	public String memberInsert(Model model, MemberJoinCommand mjc) 
			throws ParseException, java.text.ParseException{
		// TODO Auto-generated method stub
		member.setEmail(mjc.getEmail());
		member.setMemberGender(mjc.getGender());
		member.setMemberBir(mjc.getMemberBir());		
		member.setMemberId(mjc.getId1());
		member.setMemberName(mjc.getUserName());
		member.setMemberPh1(mjc.getMemberPh());
		member.setMemberPw(mjc.getPw());
		member.setAddr(mjc.getAddr());
		member.setEmailAddr(mjc.getEmailAddr());
		member.setInterests(mjc.getInterests());
		sessionRepository.insertMember(member);
		path = "MemberView/Main";
		return path;
	}

}
