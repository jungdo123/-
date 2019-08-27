package Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Command.PartnerCommand;
import Service.PartnerAddService;
import Service.PartnerModifyService;
import Service.PartnerMoreService;
import Service.SearchPartnerService;

@Controller
public class PartnerController {
	@Autowired
	private PartnerAddService partnerAddService;
	@Autowired
	private SearchPartnerService searchPartnerService;
	@Autowired
	private PartnerMoreService partnerMoreService;

	
	@RequestMapping("/partnerAdd")
		public String partnerAdd(Model model, PartnerCommand partnerCommand) {
		System.out.println("bbb");
		return "ManagerView/partnerAdd";
	}

	@RequestMapping(value = "/partnerAddAction", method = RequestMethod.POST)
		public String partnerAddAction(Model model, PartnerCommand partnerCommand) {
			String path = "";
			try {
			path = partnerAddService.partnerInsert(model, partnerCommand);
			}catch(Exception e) {
				e.printStackTrace();
			}
		return path;
	}

	@RequestMapping("/partnerList")
		public String partnerList(Model model, PartnerCommand partnerCommand) {
		return "ManagerView/partnerListAll";
	}
	
	
	@RequestMapping(value = "/seachPartner", method = RequestMethod.GET)
	public String serchMember(Model model) {
		model.addAttribute("partnerCommand", new PartnerCommand());
		System.out.println("aaaaaa");
		return "ManagerView/partnerListAll";
	}
	@RequestMapping(value = "/seachPartner", method = RequestMethod.POST)
	public String partnerListAll(@ModelAttribute("partnerCommand") PartnerCommand partnerCommand, Model model) {
		if(partnerCommand.getZone() != null & partnerCommand.getCompSortCode() != null) {
			searchPartnerService.partnerSelect(partnerCommand, model);
		}
		return "ManagerView/partnerListAll";
	}
	
	@RequestMapping(value = "/partnerMore/{partnerId}", method = RequestMethod.GET)
	public String partnerMore(@PathVariable("partnerId") String partnerId, Model model) {
		System.out.println(partnerId);
		String path = partnerMoreService.partnerDetail(partnerId, model);
		return path;
		}

	/*
	@RequestMapping("/partnerMore1")
	public String partnerMore1(@RequestParam(value = "") String memberId, Model model, PartnerCommand partnerCommand) {
		searchPartnerService.partnerSelect(partnerCommand, model);
	
		
		return "ManagerView/partnerMore";
	}*/
	
	 
	
}
