package asm.group4.steam.controller.entity;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.TreeMap;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
import asm.group4.steam.model.Game;
import asm.group4.steam.model.GameType;
import asm.group4.steam.model.ImageGame;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.GameDAO;
import asm.group4.steam.service.GameTypeDAO;
import asm.group4.steam.service.RankDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class GameController {
	@Autowired
	GameDAO gamedao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	SessionService session;
	
	@RequestMapping("admin/manager/game")
	public String view(Model model,Account account,@RequestParam("i") Optional<Integer> i) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		model.addAttribute("account", account);
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
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_game.jsp");
		return "admin/index";
	}
	@RequestMapping("admin/manager/game/form")
	public String form(Model model , @ModelAttribute("game") Game game,Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		model.addAttribute("account", account);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formgame.jsp");	
		return "admin/index";
	}
	@RequestMapping("admin/manager/game/add")
	public String add(Model model, @ModelAttribute("game") Game game) {
		gamedao.save(game);	
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_game.jsp");	
		return "redirect:/admin/manager/game";
	}
	@RequestMapping("admin/manager/game/update")
	public String update(Model model, Game item) {
		gamedao.save(item);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_game.jsp");	
		return "redirect:/admin/manager/game/edit/" + item.getId_game();
	}
	@RequestMapping("admin/manager/game/edit/{id_game}")
	public String edit(Model model,@PathVariable("id_game") Integer id_game) {
		Game game = gamedao.findById(id_game).get();
		model.addAttribute("game", game);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formgame.jsp");	
		return "admin/index";
	}
	@ResponseBody
	@RequestMapping("/admin/manager/game/Excel")
	public String excel(Model model, Account account) {
		//Blank workbook
				XSSFWorkbook workbook = new XSSFWorkbook(); 
				List<Game> games = gamedao.findAll();
				
				//Create a blank sheet
				XSSFSheet sheet = workbook.createSheet("Table Game");
				 
				//This data needs to be written (Object[])
				Map<String, Object[]> data = new TreeMap<String, Object[]>();
				data.put(String.valueOf(1),new Object[] {"ID", "Image Game", "Name Game","Price Game","Release Date"});
				int i = 1;
				for(Game game : games) {
					i = i + 1;
				data.put(String.valueOf(i),new Object[] {game.getId_game(),game.getImageGame(),game.getName_game(),game.getPrice_game(),game.getReleasedate_game()});
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
				    FileOutputStream out = new FileOutputStream(new File("CRUDgame.xlsx"));
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
