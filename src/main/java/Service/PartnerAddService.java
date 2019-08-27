package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.PartnerCommand;
import Model.DTO.Partner;
import Repository.PartnerRepository;

@Service
public class PartnerAddService {
	@Autowired
	private PartnerRepository partnerRepository;
	@Autowired
	private Partner partner;
	public void setPartner(Partner partner) {
		this.partner = partner;
	}
	public String partnerInsert(Model model, PartnerCommand partnerCommand) {
		partner.setCompSortCode(partnerCommand.getCompSortCode()); // 카테고리
		partner.setPartnerId(partnerCommand.getPartnerId()); // 아이디
		partner.setCompName(partnerCommand.getCompName()); // 상호명
		partner.setCompPres(partnerCommand.getCompPres()); // 사업주명
		partner.setCompRun(partnerCommand.getCompRun());  // 운영시간
		partner.setCompRun1(partnerCommand.getCompRun1());
		partner.setCompAddr(partnerCommand.getCompAddr()); // 주소
		partner.setCompPh(partnerCommand.getCompPh()); // 연락처
		partner.setCommission(partnerCommand.getCommission());  // 수수료
		partner.setZone(partnerCommand.getZone());  //지역
		partnerRepository.insertPartner(partner);
		
		return "MemberView/Main";
	}
	

}
