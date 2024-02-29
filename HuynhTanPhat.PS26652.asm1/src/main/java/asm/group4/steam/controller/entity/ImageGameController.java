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
import asm.group4.steam.service.GameTypeDAO;
import asm.group4.steam.service.ImageDAO;
import asm.group4.steam.service.SessionService;
import asm.group4.steam.service.UserDAO;
@Controller
public class ImageGameController {

		@Autowired
		ImageDAO imagedao;
		@Autowired
		AccountDAO accountdao;
		@Autowired
		UserDAO userdao;
		@Autowired
		AdminDAO admindao;
		@Autowired
		SessionService session;
		
		@RequestMapping("admin/manager/image")
		public String view(Model model, @RequestParam("i") Optional<Integer> i,Account account) {
			account = (Account) session.get("user");
			Admin admin = admindao.getById(account.getEmail_account());
			model.addAttribute("account",account);
			model.addAttribute("admin", admin);
			GameType gametype = new GameType();
			model.addAttribute("image", gametype);
			Pageable pageable = PageRequest.of(i.orElse(0),5);
			Page<ImageGame> page = imagedao.findAll(pageable);
			model.addAttribute("page", page);
			model.addAttribute("view","manager.jsp");
			model.addAttribute("body","_image.jsp");
			List<Integer> list = new ArrayList<Integer>();
			for(int number=1; number < page.getTotalPages();number++) {
				list.add(number);		
				}
			model.addAttribute("list",list);
			System.out.println(list.size());
			//			for(GameType gametype1 : gametypes) {
//				System.out.println(gametype1.getName_gameType());	
//				}
			return "admin/index";
		}
		@RequestMapping("admin/manager/image/form")
		public String form(Model model , @ModelAttribute("image") ImageGame img) {
			model.addAttribute("view","manager.jsp");
			model.addAttribute("body","_formimage.jsp");	
			return "admin/index";
		}
		@RequestMapping("admin/manager/image/add")
		public String add(Model model, @ModelAttribute("image") ImageGame img) {
			imagedao.save(img);	
			model.addAttribute("view","manager.jsp");
			model.addAttribute("body","_image.jsp");	
			return "redirect:/admin/manager/image";
		}
		@RequestMapping("admin/manager/image/update")
		public String update(Model model, ImageGame item) {
			imagedao.save(item);
			model.addAttribute("view","manager.jsp");
			model.addAttribute("body","_image.jsp");	
			return "redirect:/admin/manager/image/edit/" + item.getId_image();
		}
		@RequestMapping("admin/manager/image/edit/{id_image}")
		public String edit(Model model,@PathVariable("id_image") Integer id_image) {
			ImageGame img = imagedao.findById(id_image).get();
			model.addAttribute("image", img);
			model.addAttribute("view","manager.jsp");
			model.addAttribute("body","_formimage.jsp");	
			return "admin/index";
		}
		@ResponseBody
		@RequestMapping("/admin/manager/image/Excel")
		public String excel(Model model, Account account) {
			//Blank workbook
					XSSFWorkbook workbook = new XSSFWorkbook(); 
					List<ImageGame> images = imagedao.findAll();
					
					//Create a blank sheet
					XSSFSheet sheet = workbook.createSheet("Table Image");
					 
					//This data needs to be written (Object[])
					Map<String, Object[]> data = new TreeMap<String, Object[]>();
					data.put(String.valueOf(1),new Object[] {"ID Image", "Name Image", "Name Game"});
					int i = 1;
					for(ImageGame image : images) {
						i = i + 1;
					data.put(String.valueOf(i),new Object[] {image.getId_image(),image.getName_image(), image.getGame().getName_game()});
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
					    FileOutputStream out = new FileOutputStream(new File("CRUDimage.xlsx"));
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