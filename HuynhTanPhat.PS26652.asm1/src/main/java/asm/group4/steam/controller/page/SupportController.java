package asm.group4.steam.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SupportController {
	// Vai trò visitor
		@RequestMapping("/visitor/support")
		public String view1(Model model) {
			model.addAttribute("view","support.jsp");
			return "visitor/index";
		}
	// Vai trò user
		@RequestMapping("/user/support")
		public String view2(Model model) {
			model.addAttribute("view","support.jsp");
			return "user/index";
		}
	// Vai trò admin
	@RequestMapping("/admin/support")
	public String view3(Model model) {
		model.addAttribute("view","support.jsp");
		return "admin/index";
	}
}
