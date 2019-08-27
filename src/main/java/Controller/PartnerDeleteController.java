package Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Command.PartnerCommand;
import Service.PartnerDelService;
import Service.PartnerDeleteActionService;


@Controller
public class PartnerDeleteController {
	@Autowired
	private PartnerDeleteActionService partnerDeleteActionService;
	@Autowired
	private PartnerDelService partnerDelService;
	
	@RequestMapping("/partnerDel")
	public String partnerDel() {
		return "ManagerView/partnerDel";
	}
	@RequestMapping(value = "/partnerDel/{partnerId}",method = RequestMethod.POST)
	public String partnerDelPro(@PathVariable("partnerId") String partnerId, Model model) {
		System.out.println(partnerId);
		String path = partnerDelService.partnerDel(partnerId, model);
		return path;
	}
	
	@RequestMapping("partnerDelAction")
	public String partnerDelPro(@RequestParam(value="partnerId") String partnerId, Model model, PartnerCommand partnerCommand) {
		System.out.println("ControllerId : "+ partnerId);
		String path = partnerDeleteActionService.partnerDeletePro(partnerId, model, partnerCommand);
		return path;
	}
		
}
	