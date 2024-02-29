package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.group4.steam.model.GameType;

public interface GameTypeDAO extends JpaRepository<GameType, Integer>{

}
