package asm.group4.steam.controller.page;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itextpdf.text.DocumentException;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.model.Game;
import asm.group4.steam.model.ImageGame;
import asm.group4.steam.model.KeyCode;
import asm.group4.steam.model.TransactionHistory;
import asm.group4.steam.model.User;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.GameDAO;
import asm.group4.steam.service.KeyCodeDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.TransactionDAO;
import asm.group4.steam.service.TransactionPDFExporter;
import asm.group4.steam.service.UserDAO;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class StoreController {
	@Autowired
	GameDAO gamedao;
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	SessionService session;
	@Autowired
	KeyCodeDAO keycodedao;
	@Autowired
	TransactionDAO transactiondao;
	int count = 0;
	// Vai trò visitor
	@RequestMapping("/visitor/store")
	public String view1(Model model) {
		model.addAttribute("view","store.jsp");
		return "visitor/index";
	}
	// Vai trò user
	@RequestMapping("/user/store")
	public String view2(Model model) {
		model.addAttribute("view","store.jsp");
		return "user/index";
	}
//	// Nhảy đến trang detail
//	@RequestMapping("/user/detail/{id}")
//	public String godetail(Model model) {
//		Game game = new Game();
//		return "redirect:/detail/" + game.getId_game();
//	}
	
	// Vai trò admin
	@RequestMapping("/admin/store")
	public String view3(Model model, Account account,@RequestParam("i") Optional<Integer> i) {
		
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		
		model.addAttribute("account",account);
		Game game = new Game();
		model.addAttribute("game", game);
		Pageable pageable = PageRequest.of(i.orElse(0),5);
		Page<Game> page = gamedao.findAll(pageable);
		model.addAttribute("page", page);
		List<Integer> list = new ArrayList<Integer>();
		for(int number=1; number < page.getTotalPages();number++) {
			list.add(number);		
			}
		model.addAttribute("list",list);
		DecimalFormat formatter = new DecimalFormat ("###,###");
		String moneyformat = formatter.format(account.getMoney_account());
		model.addAttribute("money", moneyformat);
		model.addAttribute("view","store.jsp");
		System.out.println(game.getName_game());
		return "admin/index";
	}
	 @RequestMapping("/transaction/export/pdf")
	    public void exportToPDF(HttpServletResponse response) throws DocumentException, IOException {
	        response.setContentType("application/pdf");
	        DateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss");
	        String currentDateTime = dateFormatter.format(new Date());
	         
	        String headerKey = "Content-Disposition";
	        String headerValue = "attachment; filename=users_" + currentDateTime + ".pdf";
	        response.setHeader(headerKey, headerValue);
	         
	        List<TransactionHistory> listTrans = transactiondao.findAll();
	         
	        TransactionPDFExporter exporter = new TransactionPDFExporter(listTrans);
	        exporter.export(response);
	        
	    }
	@RequestMapping("/store/buygame/{id_game}")
	public String buy(Model model, @PathVariable("id_game") Integer id_game, TransactionHistory transaction, Account account) {
		try {
			account = (Account) session.get("user");
			Game game = gamedao.findById(id_game).get();
			KeyCode keycode = keycodedao.findbyActive(id_game);
			transaction = new TransactionHistory();
			transaction.setGame(game);
			transaction.setAccount(account);
			LocalDate date = LocalDate.of(2024, 2, 24);
			transaction.setDate_transaction(date);
			transaction.setMoney_transaction(game.getPrice_game());
			transaction.setKeycode(keycode);
			transactiondao.save(transaction);
			account.setMoney_account(account.getMoney_account()-transaction.getMoney_transaction());
			accountdao.save(account);
			model.addAttribute("game", game);
			model.addAttribute("transaction",transaction);
			model.addAttribute("view","bill.jsp");
		}catch(Exception e){
			count++;
			model.addAttribute("count",count);
			model.addAttribute("view","store.jsp");
			e.printStackTrace();
		}
		
		return "admin/index";
	}
	
}
