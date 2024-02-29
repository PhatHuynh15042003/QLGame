package asm.group4.steam.controller.entity;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.model.DepositHistory;
import asm.group4.steam.model.Game;
import asm.group4.steam.model.GameType;
import asm.group4.steam.model.RankType;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.DepositDAO;
import asm.group4.steam.service.GameTypeDAO;
import asm.group4.steam.service.RankDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class AccountController {
	
	@Autowired
	AccountDAO accountdao;
	@Autowired
	RankDAO rankdao;
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	SessionService session;
	@Autowired
	DepositDAO depositdao;
	
	@RequestMapping("admin/manager/account")
	public String view(Model model,Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("admin", admin);
		model.addAttribute("account", account);
		List<Account> accounts = accountdao.findAll();
		model.addAttribute("accounts", accounts);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_account.jsp");
		return "admin/index";
	}
	@RequestMapping("admin/manager/account/form")
	public String form(Model model , @ModelAttribute("account") Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formaccount.jsp");	
		return "admin/index";
	}
	@RequestMapping("admin/manager/account/add")
	public String add(Model model, @ModelAttribute("account") Account account) {
		accountdao.save(account);	
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_account.jsp");	
		return "redirect:/admin/manager/account";
	}
	@RequestMapping("admin/manager/account/update")
	public String update(Model model, Account account) {
		accountdao.save(account);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_account.jsp");	
		return "redirect:/admin/manager/account/edit/" + account.getId_account();
	}
	@RequestMapping("admin/manager/account/edit/{id_account}")
	public String edit(Model model,@PathVariable("id_account") Integer id_account) {
		Account account = accountdao.findById(id_account).get();
		model.addAttribute("account", account);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formaccount.jsp");	
		return "admin/index";
	}
	@GetMapping("/admin/manager/account/delete/{id_account}")
	public String delete(Model model, @PathVariable("id_account") Integer id_account) {
		accountdao.deleteById(id_account);
		return "redirect:/admin/manager/account"; 
	}
	@RequestMapping("/admin/deposit/{totalPrice}")
	public String deposit(Model model, Account account, @PathVariable("totalPrice") Double ammount) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("admin", admin);
		model.addAttribute("account", account);
		account = (Account) session.get("user");
		Integer id_account = account.getId_account();
		Double new_balance_account_money = deposit(id_account, ammount);
		account.setMoney_account(new_balance_account_money);
		accountdao.save(account);
		DepositHistory new_deposit = new DepositHistory();
		new_deposit.setAccount(account);
		new_deposit.setMoney_deposit(ammount);
		depositdao.save(new_deposit);
		model.addAttribute("id_account", id_account);
		model.addAttribute("money_account", account.getMoney_account());
		model.addAttribute("view" , "store.jsp");
		return "/admin/index";
	}
	
	public double deposit(Integer id_account, Double ammount) {
		Account account = accountdao.findById(id_account).get();
		Double recent_account_money = account.getMoney_account();
		Double new_balance_account_money = recent_account_money + ammount;
		return new_balance_account_money;
	}

	@ResponseBody
	@RequestMapping("/admin/manager/account/Excel")
	public String excel(Model model, Account account) {
		//Blank workbook
				XSSFWorkbook workbook = new XSSFWorkbook(); 
				List<Account> accounts = accountdao.findAll();
				
				//Create a blank sheet
				XSSFSheet sheet = workbook.createSheet("Table Account");
				 
				//This data needs to be written (Object[])
				Map<String, Object[]> data = new TreeMap<String, Object[]>();
				data.put(String.valueOf(1),new Object[] {"ID", "Email Account", "Level","Money","Role","RankType"});
				int i = 1;
				for(Account account1 : accounts) {
					i = i + 1;
				data.put(String.valueOf(i),new Object[] {account1.getId_account(),account1.getEmail_account(), account1.getLevel_account(),account1.getMoney_account(),account1.getRole_account(),account1.getRankType().getName_rankType()});
				}
				//Iterate over data and write to sheet
				Set<String> keyset = data.keySet();
				int rownum = 0;
				for (String key : keyset)
				{
				    Row row = sheet.createRow(rownum++);
				    Object [] objArr = data.get(key);
				    int cellnum = 0;
				    for (Object obj : objArr)
				    {
				       Cell cell = row.createCell(cellnum++);
				       if(obj instanceof String)
				            cell.setCellValue((String)obj);
				      
				        else if(obj instanceof Integer)
				            cell.setCellValue((Integer)obj);
				        else if(obj instanceof Double)
			            cell.setCellValue((Double)obj);
				        else if(obj instanceof Boolean)
				            cell.setCellValue((Boolean)obj);
			    }
				}
				try 
				{
					//Write the workbook in file system
				    FileOutputStream out = new FileOutputStream(new File("CRUDAccount.xlsx"));
				    workbook.write(out);
				    out.close();
				    
				    System.out.println("written successfully on disk.");
				     
				} 
				catch (Exception e) 
				{
				    e.printStackTrace();
				}
				return "written successfully on disk.";
	}
	@ModelAttribute("ranktypes")
	public List<RankType> getRank(){
		List<RankType> rank = rankdao.findAll();
		return rank;
	}
	
}
