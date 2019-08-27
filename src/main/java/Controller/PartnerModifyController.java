package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Command.PartnerCommand;
import Service.PartnerModifyService;
@Controller
public class PartnerModifyController {
	@Autowired
	private PartnerModifyService partnerModifyService;
	
	@RequestMapping(value = "/partnerModifyAction", method = RequestMethod.POST)
	public String partnerModifyAction( Model model, PartnerCommand partnerCommand) {
		System.out.println("ModifyId : "+ partnerCommand.getPartnerId());
		String path = partnerModifyService.modifyAction(model, partnerCommand);
		return path;
	}
}
