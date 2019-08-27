package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.PartnerCommand;
import Model.DTO.Partner;
import Repository.PartnerRepository;

@Service
public class PartnerDeleteActionService {
	@Autowired
	private PartnerRepository partnerRepository;
	public String partnerDeletePro(String partnerId,Model model, 		
			PartnerCommand partnerCommand) {
		Partner partner = new Partner();
		partner.setPartnerId(partnerCommand.getPartnerId());
		System.out.println(partnerCommand.getPartnerId());
		int result = partnerRepository.partnerDel(partner);
		String path = "";
		if(result == 0) {
			path = "redirect:main";
		}else {
			path = "redirect:main";
		}
		return null;
	}

}
