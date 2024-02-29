package asm.group4.steam.controller.page;

import java.text.DecimalFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.model.ChatMessage;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class ChattingController {
	ChatMessage chatmessage;
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	SessionService session;
	// Vai trò User
	@RequestMapping("/user/chatting")
	public String view1(Model model) {
		model.addAttribute("view","chatting.jsp");
		return "user/index";
	}
	
	// Vai trò Admin
	@RequestMapping("/admin/chatting")
	public String view2(Model model,Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.findByEmail(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		DecimalFormat formatter = new DecimalFormat ("###,###");
		String moneyformat = formatter.format(account.getMoney_account());
		model.addAttribute("money", moneyformat);
		sendMessage(chatmessage);
		model.addAttribute("view","chatting.jsp");
		return "admin/index";
	}
	@MessageMapping("/chat.sendMessage")
    @SendTo("/topic/public")
    public ChatMessage sendMessage(@Payload ChatMessage chatMessage) {
        return chatMessage;
    }
    @MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    public ChatMessage addUser(@Payload ChatMessage chatMessage, SimpMessageHeaderAccessor headerAccessor) {
        headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
        return chatMessage;
    }
	
}
