package asm.group4.steam.service;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm.group4.steam.model.KeyCode;

public interface KeyCodeDAO extends JpaRepository<KeyCode, Integer>{
	@Query("select o from KeyCode o where o.game.id_game = ?1 and o.active = false")
	KeyCode findbyActive(Integer id_game);
}
