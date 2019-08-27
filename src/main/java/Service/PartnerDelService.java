package Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Model.DTO.Partner;
import Repository.PartnerRepository;

@Service
public class PartnerDelService {
	@Autowired
	private PartnerRepository partnerRepository;
	public String partnerDel(String partnerId, Model model) {
		Partner partner = partnerRepository.selectPartner(partnerId);
		String path = "";
		
		return path;
	}

}
