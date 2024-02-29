package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.group4.steam.model.ImageGame;

public interface ImageDAO extends JpaRepository<ImageGame, Integer>{

}
