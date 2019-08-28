package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Service.MemberListService;

@Controller
public class MemberListController {
	@Autowired
	private MemberListService MemberListService;
	@RequestMapping(value = "/member_list", method = RequestMethod.GET)
	
	public String member_list(Model model, @RequestParam(value = "page" ,
				defaultValue = "1")	String page) { 
		return MemberListService.memberList(model,page);
	}
	
}
