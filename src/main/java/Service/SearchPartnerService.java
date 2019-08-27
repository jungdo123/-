package Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import Command.PartnerCommand;
import Model.DTO.Partner;
import Repository.PartnerRepository;
@Service
public class SearchPartnerService {
	@Autowired
	private PartnerRepository partnerRepository;
	
	public void partnerSelect(PartnerCommand partnerCommand, Model model) {
		List<Partner> partner = partnerRepository.partnerSelect(partnerCommand);
		model.addAttribute("pt",partner);
		System.out.println("지역 = " + partnerCommand.getZone());
		System.out.println("분류 = " + partnerCommand.getCompSortCode());
	}
}