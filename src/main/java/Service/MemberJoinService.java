package Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	private SimpleDateFormat dt = new SimpleDateFormat("yymmdd");
	private Date date;
	private Timestamp tst;
	public void setMember(Member member) {
		this.member = member;
	}
	public String memberInsert(Model model, MemberJoinCommand mjc) 
			throws ParseException, java.text.ParseException{
		// TODO Auto-generated method stub
		member.setEmail(mjc.getEmail());
		member.setMemberGender(mjc.getGender());
		
		date = dt.parse(mjc.getMemberBir());
		tst = new Timestamp(date.getTime());
		member.setMemberBir(tst);
		
		member.setMemberId(mjc.getId1());
		member.setMemberName(mjc.getUserName());
		member.setMemberPh1(mjc.getMemberPh());
		member.setMemberPw(mjc.getPw());
		sessionRepository.insertMember(member);
		path = "MemberView/Main";
		return path;
	}

}
