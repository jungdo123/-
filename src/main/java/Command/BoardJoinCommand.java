package Command;

import org.springframework.web.multipart.MultipartFile;

public class BoardJoinCommand {
	String doSi10;
	String ku10;
	String whCpn10;
	String itemEx10;
	String itemBuyPr10;
	String itemStk10;
	String itemRun10;
	String itemMimit10;
	String rsSort10;

	
	  MultipartFile image;
	  
	  
	  
	  public MultipartFile getImage() { return image; } public void
	  setImage(MultipartFile image) { this.image = image; }
	 
	
	public String getDoSi10() {
		return doSi10;
	}
	public void setDoSi10(String doSi10) {
		this.doSi10 = doSi10;
	}
	public String getKu10() {
		return ku10;
	}
	public void setKu10(String ku10) {
		this.ku10 = ku10;
	}
	
	public String getWhCpn10() {
		return whCpn10;
	}
	public void setWhCpn10(String whCpn10) {
		this.whCpn10 = whCpn10;
	}
	public String getItemEx10() {
		return itemEx10;
	}
	public void setItemEx10(String itemEx10) {
		this.itemEx10 = itemEx10;
	}
	public String getItemBuyPr10() {
		return itemBuyPr10;
	}
	public void setItemBuyPr10(String itemBuyPr10) {
		this.itemBuyPr10 = itemBuyPr10;
	}
	public String getItemStk10() {
		return itemStk10;
	}
	public void setItemStk10(String itemStk10) {
		this.itemStk10 = itemStk10;
	}
	public String getItemRun10() {
		return itemRun10;
	}
	public void setItemRun10(String itemRun10) {
		this.itemRun10 = itemRun10;
	}
	public String getItemMimit10() {
		return itemMimit10;
	}
	public void setItemMimit10(String itemMimit10) {
		this.itemMimit10 = itemMimit10;
	}
	public String getRsSort10() {
		return rsSort10;
	}
	public void setRsSort10(String rsSort10) {
		this.rsSort10 = rsSort10;
	}
	
} 
