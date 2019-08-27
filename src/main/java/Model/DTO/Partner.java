package Model.DTO;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Partner implements Serializable {
	
	long partnerNum; //	기업번호
	String partnerId;	// 아이디
	String compSortCode; // 분류코드
	String compAddr; //	기업주소
	String compRun; //	운영시간
	String compRun1;
	String compPh; //	기업연락처
	String compPres; // 대표자명
	String compName; // 기업이름
	String commission; // 수수료
	String zone; // 지역
	
	
	
	public String getZone() {
		return zone;
	}
	public void setZone(String zone) {
		this.zone = zone;
	}
	public long getPartnerNum() {
		return partnerNum;
	}
	public void setPartnerNum(long partnerNum) {
		this.partnerNum = partnerNum;
	}
	public String getPartnerId() {
		return partnerId;
	}
	public void setPartnerId(String partnerId) {
		this.partnerId = partnerId;
	}
	public String getCompSortCode() {
		return compSortCode;
	}
	public void setCompSortCode(String compSortCode) {
		this.compSortCode = compSortCode;
	}
	public String getCompAddr() {
		return compAddr;
	}
	public void setCompAddr(String compAddr) {
		this.compAddr = compAddr;
	}
	public String getCompRun() {
		return compRun;
	}
	public void setCompRun(String compRun) {
		this.compRun = compRun;
	}
	public String getCompRun1() {
		return compRun1;
	}
	public void setCompRun1(String compRun1) {
		this.compRun1 = compRun1;
	}
	public String getCompPh() {
		return compPh;
	}
	public void setCompPh(String compPh) {
		this.compPh = compPh;
	}
	public String getCompPres() {
		return compPres;
	}
	public void setCompPres(String compPres) {
		this.compPres = compPres;
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getCommission() {
		return commission;
	}
	public void setCommission(String commission) {
		this.commission = commission;
	}
}
