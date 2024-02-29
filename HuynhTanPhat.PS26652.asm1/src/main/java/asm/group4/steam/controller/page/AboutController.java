package asm.group4.steam.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutController {
	// About chỉ tồn tại ở Visitor.
	@RequestMapping("/visitor/about")
	public String about(Model model) {
		model.addAttribute("view","about.jsp");
		return "visitor/index";
	}
}
