package asm.group4.steam.controller.entity;

import java.io.File;
import java.io.FileOutputStream;
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
import org.springframework.web.bind.annotation.ResponseBody;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.model.Game;
import asm.group4.steam.model.GameType;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.GameDAO;
import asm.group4.steam.service.GameTypeDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class GameTypeController {
	@Autowired
	GameTypeDAO gametypedao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	SessionService session;
	
	@RequestMapping("admin/manager/gametype")
	public String view(Model model, Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		GameType gametype = new GameType();
		model.addAttribute("gametype", gametype);
		List<GameType> gametypes = gametypedao.findAll();
		model.addAttribute("gametypes", gametypes);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_gametype.jsp");
		for(GameType gametype1 : gametypes) {
			System.out.println(gametype1.getName_gameType());	
			}
		return "admin/index";
	}
	@RequestMapping("admin/manager/gametype/form")
	public String form(Model model , @ModelAttribute("gametype") GameType gametype) {
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formgametype.jsp");	
		return "admin/index";
	}
	@RequestMapping("admin/manager/gametype/add")
	public String add(Model model, @ModelAttribute("gametype") GameType gametype) {
		gametypedao.save(gametype);	
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_gametype.jsp");	
		return "redirect:/admin/manager/gametype";
	}
	@RequestMapping("admin/manager/gametype/update")
	public String update(Model model, GameType item) {
		gametypedao.save(item);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_gametype.jsp");	
		return "redirect:/admin/manager/gametype/edit/" + item.getId_gameType();
	}
	@RequestMapping("admin/manager/gametype/edit/{id_gameType}")
	public String edit(Model model,@PathVariable("id_gameType") Integer id_gameType) {
		GameType gametype = gametypedao.findById(id_gameType).get();
		model.addAttribute("gametype", gametype);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formgametype.jsp");	
		return "admin/index";
	}
	@GetMapping("/admin/manager/gametype/delete/{id_gameType}")
	public String delete(Model model, @PathVariable("id_gameType") Integer id_gameType) {
		gametypedao.deleteById(id_gameType);
		return "redirect:/admin/manager/gametype"; 
	}
	@RequestMapping("admin/gametype/update")
	public String update(Model model , Game game) {
		return "redirect:/admin/game/edit" + game.getId_game(); 
	}
	@ResponseBody
	@RequestMapping("/admin/manager/gametype/Excel")
	public String excel(Model model, Account account) {
		//Blank workbook
				XSSFWorkbook workbook = new XSSFWorkbook(); 
				List<GameType> gametypes = gametypedao.findAll();
				
				//Create a blank sheet
				XSSFSheet sheet = workbook.createSheet("Table GameType");
				 
				//This data needs to be written (Object[])
				Map<String, Object[]> data = new TreeMap<String, Object[]>();
				data.put(String.valueOf(1),new Object[] {"ID GameType", "Name GameType"});
				int i = 1;
				for(GameType gametype : gametypes) {
					i = i + 1;
				data.put(String.valueOf(i),new Object[] {gametype.getId_gameType(),gametype.getName_gameType()});
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
				    FileOutputStream out = new FileOutputStream(new File("CRUDgametype.xlsx"));
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
}
