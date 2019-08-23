package Command;

import java.io.Serializable;
@SuppressWarnings("serial")
public class PwChangeCommand implements Serializable{
	private String memberId;
	private String pw;
	private String newPw;
	private String reNewPw;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNewPw() {
		return newPw;
	}
	public void setNewPw(String newPw) {
		this.newPw = newPw;
	}
	public String getReNewPw() {
		return reNewPw;
	}
	public void setReNewPw(String reNewPw) {
		this.reNewPw = reNewPw;
	}
	
}
