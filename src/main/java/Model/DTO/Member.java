package Model.DTO;

import java.io.Serializable;
import java.sql.Timestamp;
@SuppressWarnings("serial")
public class Member implements Serializable{
	private String memberId;
	private String memberPw;
	private Integer memberNum;
	private String memberBir;
	private String memberName;
	private Integer memberGender;
	private String memberPh1;
	private String interests;
	private String addr;
	private String email;
	private Integer memberGrade;
	private Timestamp memberReg;
	private String emailAddr;
	
	public String getEmailAddr() {
		return emailAddr;
	}
	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public Integer getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Integer memberNum) {
		this.memberNum = memberNum;
	}
	
	public String getMemberBir() {
		return memberBir;
	}
	public void setMemberBir(String memberBir) {
		this.memberBir = memberBir;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Integer getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(Integer memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberPh1() {
		return memberPh1;
	}
	public void setMemberPh1(String memberPh1) {
		this.memberPh1 = memberPh1;
	}
	public String getInterests() {
		return interests;
	}
	public void setInterests(String interests) {
		this.interests = interests;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(Integer memberGrade) {
		this.memberGrade = memberGrade;
	}
	public Timestamp getMemberReg() {
		return memberReg;
	}
	public void setMemberReg(Timestamp memberReg) {
		this.memberReg = memberReg;
	}
	
}
