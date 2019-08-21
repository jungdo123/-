package Command;

import java.sql.Timestamp;

public class MemberJoinCommand {
	private String id1;
	private String pw;
	private String pwCon;
	private String userName;
	private String memberBir;
	private Integer gender;
	private String email;
	private String memberPh;
	public String getId1() {
		return id1;
	}
	public void setId1(String id1) {
		this.id1 = id1;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPwCon() {
		return pwCon;
	}
	public void setPwCon(String pwCon) {
		this.pwCon = pwCon;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMemberBir() {
		return memberBir;
	}
	public void setMemberBir(String memberBir) {
		this.memberBir = memberBir;
	}
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMemberPh() {
		return memberPh;
	}
	public void setMemberPh(String memberPh) {
		this.memberPh = memberPh;
	}
	
}
