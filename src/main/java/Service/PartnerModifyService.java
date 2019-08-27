package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Command.PartnerCommand;
import Model.DTO.Partner;
import Repository.PartnerRepository;

public class PartnerModifyService {
	@Autowired
	private  PartnerRepository partnerRepository;
	public  String modifyAction( Model model, PartnerCommand partnerCommand) {
		Partner partner = new Partner();
		
		System.out.println("ModifyServicId : " + partnerCommand.getPartnerId());
		System.out.println("ModifyServiceCompSortCode : "+ partnerCommand.getCompSortCode());
		
		partner.setPartnerId(partnerCommand.getPartnerId());
		partner.setCompSortCode(partnerCommand.getCompSortCode());
		partner.setCompName(partnerCommand.getCompName());
		partner.setCompRun(partnerCommand.getCompRun());
		partner.setCompRun1(partnerCommand.getCompRun1());
		partner.setCompPh(partnerCommand.getCompPh());
	
		System.out.println("partnerId : " + partner.getPartnerId());
		System.out.println("partnerCompSortCode : " + partner.getCompSortCode());
		
		int result = partnerRepository.updatePartner(partner);
		System.out.println("partner : " + partner.getCompSortCode());
		
		String path = "";
		if(result == 0) {
			path = "redirect:../partnerMore";
		}else {
			path = "MemberView/Main";
		}
		return null;
	}

}
