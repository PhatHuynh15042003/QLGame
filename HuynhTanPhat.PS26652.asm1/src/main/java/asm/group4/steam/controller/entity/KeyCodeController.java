package asm.group4.steam.controller.entity;

import java.io.File;
import java.io.FileOutputStream;
import java.time.LocalDate;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;
import asm.group4.steam.model.Game;
import asm.group4.steam.model.GameType;
import asm.group4.steam.model.KeyCode;
import asm.group4.steam.service.AccountDAO;
import asm.group4.steam.service.AdminDAO;
import asm.group4.steam.service.GameDAO;
import asm.group4.steam.service.GameTypeDAO;
import asm.group4.steam.service.KeyCodeDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;

@Controller
public class KeyCodeController {
	@Autowired
	KeyCodeDAO keycodedao;
	@Autowired
	AccountDAO accountdao;
	@Autowired
	UserDAO userdao;
	@Autowired
	AdminDAO admindao;
	@Autowired
	SessionService session;
	
	@RequestMapping("admin/manager/keycode")
	public String view(Model model,Account account) {
		account = (Account) session.get("user");
		Admin admin = admindao.getById(account.getEmail_account());
		model.addAttribute("account",account);
		model.addAttribute("admin", admin);
		KeyCode keycode = new KeyCode();
		model.addAttribute("keycode", keycode);
		List<KeyCode> keycodes = keycodedao.findAll();
		model.addAttribute("keycodes", keycodes);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_keycode.jsp");
		return "admin/index";
	}
	@RequestMapping("admin/manager/keycode/form")
	public String form(Model model , @ModelAttribute("keycode") KeyCode keycode) {
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formkeycode.jsp");	
		return "admin/index";
	}
	@RequestMapping("admin/manager/keycode/add")
	public String add(Model model, @ModelAttribute("keycode") KeyCode keycode) {
		keycodedao.save(keycode);	
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_keycode.jsp");	
		return "redirect:/admin/manager/keycode";
	}
	@RequestMapping("admin/manager/keycode/update")
	public String update(Model model, KeyCode keycode) {
		keycodedao.save(keycode);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_keycode.jsp");	
		return "redirect:/admin/manager/gametype/edit/" + keycode.getId_keyCode();
	}
	@RequestMapping("admin/manager/keycode/edit/{id_gameType}")
	public String edit(Model model,@PathVariable("id_keycode") Integer id_keycode) {
		KeyCode keycode = keycodedao.findById(id_keycode).get();
		model.addAttribute("keycode", keycode);
		model.addAttribute("view","manager.jsp");
		model.addAttribute("body","_formkeycode.jsp");	
		return "admin/index";
	}
	@ResponseBody
	@RequestMapping("/admin/manager/keycode/Excel")
	public String excel(Model model, KeyCode keycode) {
		//Blank workbook
				XSSFWorkbook workbook = new XSSFWorkbook(); 
				List<KeyCode> keycodes = keycodedao.findAll();
				
				//Create a blank sheet
				XSSFSheet sheet = workbook.createSheet("Table Keycode");
				 
				//This data needs to be written (Object[])
				Map<String, Object[]> data = new TreeMap<String, Object[]>();
				data.put(String.valueOf(1),new Object[] {"ID", "Active", "Name Game","Vertification Code"});
				int i = 1;
				for(KeyCode keycode1 : keycodes) {
					i = i + 1;
				data.put(String.valueOf(i),new Object[] {keycode1.getId_keyCode(),keycode1.getActive(),keycode1.getGame().getName_game(),keycode1.getVerification_keyCode()});
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
				    FileOutputStream out = new FileOutputStream(new File("CRUDkeycode.xlsx"));
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
