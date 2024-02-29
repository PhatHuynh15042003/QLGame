package asm.group4.steam.controller.page;

import java.text.DecimalFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.SessionService;

@org.springframework.stereotype.Controller
public class DepositController {
	@Autowired
	SessionService session;
	@Autowired
	AdminDAO admindao;
	@RequestMapping("/account/deposit")
	public String depositH(Model model, Account account) {
		DecimalFormat formatter = new DecimalFormat ("###,###");
		account = (Account) session.get("user");
		Admin admin = admindao.findByEmail(account.getEmail_account());
		model.addAttribute("admin",admin);
		model.addAttribute("account",account);
		String moneyformat = formatter.format(account.getMoney_account());
		model.addAttribute("money", moneyformat);
		model.addAttribute("view","informoney.jsp");
		return "/admin/index";
	}
}
