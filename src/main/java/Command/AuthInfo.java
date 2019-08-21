package Command;

public class AuthInfo {
	private String id1;
	private String pw;
	private String name;
	
	public AuthInfo(String id1, String pw, String name) {
		super();
		this.id1 = id1;
		this.pw = pw;
		this.name = name;
	}
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
