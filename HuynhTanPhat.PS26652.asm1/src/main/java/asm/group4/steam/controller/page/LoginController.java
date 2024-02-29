package asm.group4.steam.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asm.group4.steam.model.Account;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.SessionService;

@Controller
public class LoginController {
	@Autowired
	AccountDAO dao;
	@Autowired
	SessionService session;
	//Vai trò visitor
	@RequestMapping("/visitor/login")
	public String view(Model model) {
		model.addAttribute("view","login.jsp");
		return "visitor/index";
	}
	@PostMapping("/account/login")
	public String login(Model model, @RequestParam("email") String email, 
			@RequestParam("password") String password) {
		try {
			Account user = dao.findByEmail(email);
			if(user == null || !user.getPassword_account().equals(password)) {
				model.addAttribute("message", "Invalid username or password!");
			} else {
				session.set("user", user);
				String uri = (String) session.get("security-uri");	
				if(uri != null) {
					return "redirect:" + uri;
				} else {
					model.addAttribute("message", "Login succeed");
					if(user.getRole_account()) {
						return "redirect:/admin/profile";
					}else {
						return "redirect:/user/profile";
					}
				}
			}
		} catch(Exception e) {
			model.addAttribute("message", "Invalid username!");
		}
		model.addAttribute("view","login.jsp");
		return "visitor/index";
	}
}
