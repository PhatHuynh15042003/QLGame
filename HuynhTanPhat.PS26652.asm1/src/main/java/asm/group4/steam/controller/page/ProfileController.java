package asm.group4.steam.controller.page;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.model.User;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class ProfileController {
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	SessionService session;
	// Vai trò user
	@RequestMapping("/user/profile")
	public String view2(Model model, Account account) {
		account = (Account) session.get("user");
		User user = userdao.findByEmail(account.getEmail_account());
		model.addAttribute("user", user);
		List<User> users = userdao.findAll();
		model.addAttribute("users", users);
		model.addAttribute("view","profile.jsp");
		return "user/index";
	}
	
	// Vai trò admin
	@RequestMapping("/admin/profile")
	public String view3(Model model, Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.findByEmail(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		DecimalFormat formatter = new DecimalFormat ("###,###");
		String moneyformat = formatter.format(account.getMoney_account());
		model.addAttribute("money", moneyformat);
		model.addAttribute("view","profile.jsp");
		return "admin/index";
	}
	
	
	
}
