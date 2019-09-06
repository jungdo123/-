package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Service.ResLocationService;

@Controller
public class RestaurantController {
	@Autowired
	ResLocationService rls;

	@RequestMapping("/restaurant")
	public String main(Model model) {
		return "RestaurantView/main";
	}
	
	@RequestMapping("/seoul")
	public String location(Model model) {
		String path = rls.selectLocation();
		return path;
	}
}
