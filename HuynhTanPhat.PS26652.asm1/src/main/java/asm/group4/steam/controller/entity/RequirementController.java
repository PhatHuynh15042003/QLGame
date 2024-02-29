package asm.group4.steam.controller.entity;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import asm.group4.steam.model.Game;
import asm.group4.steam.model.GameType;
import asm.group4.steam.service.GameTypeDAO;

public class RequirementController {
	@Controller
	public class GameTypeController {
		@Autowired
		GameTypeDAO gametypedao;
		
		@RequestMapping("admin/manager/gametype")
		public String view(Model model) {
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
		@RequestMapping("admin/gametype/update")
		public String update(Model model , Game game) {
			return "redirect:/admin/game/edit" + game.getId_game(); 
		}
}
}
