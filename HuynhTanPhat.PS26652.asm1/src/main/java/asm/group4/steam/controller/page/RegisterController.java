package asm.group4.steam.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import asm.group4.steam.model.Account;
import asm.group4.steam.service.AccountDAO;

@Controller
public class RegisterController {
	@Autowired
	AccountDAO accountdao;
	@RequestMapping("/visitor/register")
	public String view(Model model) {
		model.addAttribute("view","register.jsp");
		return "visitor/index";
	}
	@PostMapping("/account/register")
	public String register(Model model,Account account) {
		accountdao.save(account);
		return "redirect:/visitor/login";
	}
}
