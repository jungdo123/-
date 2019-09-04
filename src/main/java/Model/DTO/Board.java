package Model.DTO;

import java.io.File;
import java.io.Serializable;
import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;
@SuppressWarnings("serial")
public class Board implements Serializable{
	int itemNum;
	int cpNum;
	String doSi;
	String ku;
	String whCpn;
	String itemEx;
	int itemBuyPr2;
	int itemStk2;
	Timestamp itemRun2;
	int itemMimit2;
	String rsSort;
	String itemImg;
	String ImgName;
	
	public int getitemNum() {
		return itemNum;
	}
	public void setitemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public int getCpNum() {
		return cpNum;
	}
	public void setCpNum(int cpNum) {
		this.cpNum = cpNum;
	}
	public String getDoSi() {
		return doSi;
	}
	public void setDoSi(String doSi) {
		this.doSi = doSi;
	}
	public String getKu() {
		return ku;
	}
	public void setKu(String ku) {
		this.ku = ku;
	}
	public String getWhCpn() {
		return whCpn;
	}
	public void setWhCpn(String whCpn) {
		this.whCpn = whCpn;
	}
	public String getItemEx() {
		return itemEx;
	}
	public void setItemEx(String itemEx) {
		this.itemEx = itemEx;
	}
	public int getItemBuyPr2() {
		return itemBuyPr2;
	}
	public void setItemBuyPr2(int itemBuyPr2) {
		this.itemBuyPr2 = itemBuyPr2;
	}
	public int getItemStk2() {
		return itemStk2;
	}
	public void setItemStk2(int itemStk2) {
		this.itemStk2 = itemStk2;
	}
	public Timestamp getItemRun2() {
		return itemRun2;
	}
	public void setItemRun2(Timestamp tst) {
		this.itemRun2 = tst;
	}
	public int getItemMimit2() {
		return itemMimit2;
	}
	public void setItemMimit2(int itemMimit2) {
		this.itemMimit2 = itemMimit2;
	}
	public String getRsSort() {
		return rsSort;
	}
	public void setRsSort(String rsSort) {
		this.rsSort = rsSort;
		
	}
	public String getItemImg() {
		return itemImg;
	}
	public void setItemImg(String originalFile) {
		this.itemImg = originalFile;
	}
	public String getImgName() {
		return ImgName;
	}
	public void setImgName(String storedFileName) {
		ImgName = storedFileName;
	}
	

	
	


}