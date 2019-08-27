package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.Partner;
import Repository.PartnerRepository;

@Service
public class PartnerMoreService {
	@Autowired
	private PartnerRepository partnerRepository;
	public String partnerDetail(String partnerId, Model model) {
		Partner partner = partnerRepository.selectPartner(partnerId);
		String path = "";
		if(partner == null) {
			path = "redirect:partnerListAll";
		}else {
			model.addAttribute("pt", partner);
			path = "ManagerView/partnerMore";
		}
		return path;
	}
	
}
