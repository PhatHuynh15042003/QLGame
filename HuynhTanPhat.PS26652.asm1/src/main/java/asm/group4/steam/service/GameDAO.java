package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.group4.steam.model.Game;

public interface GameDAO extends JpaRepository<Game, Integer>{

}
