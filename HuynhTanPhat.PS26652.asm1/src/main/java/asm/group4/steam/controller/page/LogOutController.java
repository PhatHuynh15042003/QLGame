package asm.group4.steam.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import asm.group4.steam.model.Account;
import asm.group4.steam.service.SessionService;

@Controller
public class LogOutController {
	@Autowired
	SessionService session;
	@GetMapping("/account/logout")
	public String logout(Model model) {
		Account accountLogin = (Account) session.get("user");
		if(accountLogin != null) {
			session.set("user", null);
		}
		return "redirect:/visitor/login";
	}
}
