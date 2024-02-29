package asm.group4.steam.controller.page;

import java.text.DecimalFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class CommunityController {
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	SessionService session;
	// Vai trò visitor
		@RequestMapping("/visitor/community")
		public String view1(Model model) {
			model.addAttribute("view","community.jsp");
			return "visitor/index";
		}
		// Vai trò user
		@RequestMapping("/user/community")
		public String view2(Model model) {
			model.addAttribute("view","community.jsp");
			return "user/index";
		}
		
		// Vai trò admin
		@RequestMapping("/admin/community")
		public String view3(Model model,Account account) {
			account = (Account) session.get("user");
			Admin admin = admindao.getById(account.getEmail_account());
			model.addAttribute("account",account);
			DecimalFormat formatter = new DecimalFormat ("###,###");
			String moneyformat = formatter.format(account.getMoney_account());
			model.addAttribute("money", moneyformat);
			model.addAttribute("admin", admin);
			model.addAttribute("view","community.jsp");
			return "admin/index";
		}
}
