package asm.group4.steam.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import asm.group4.steam.model.Game;
import asm.group4.steam.service.GameDAO;

@Controller
public class DetailController {
	@Autowired
	GameDAO gamedao;
	// Vai trò visitor
			@RequestMapping("/visitor/detail")
				public String view1(Model model) {
					model.addAttribute("view","detail.jsp");
					return "visitor/index";
				}	
	
	// Vai trò user
		@RequestMapping("/user/detail")
			public String view2(Model model) {
				model.addAttribute("view","detail.jsp");
				return "user/index";
			}	
	// Vai trò admin
		@RequestMapping("/admin/detail/{id_game}")
			public String view3(Model model, @PathVariable("id_game") Integer id_game) {
				Game game = gamedao.findById(id_game).get();
				if(game.getStatus()) {
					model.addAttribute("status","Đang phát hành");
				}else {
					model.addAttribute("status","Chưa phát hành");
				}
				model.addAttribute("game",game);
				model.addAttribute("view","detail.jsp");
				return "admin/index";
			}
}
