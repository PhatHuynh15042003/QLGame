package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;

import asm.group4.steam.model.DepositHistory;

public interface DepositDAO extends JpaRepository<DepositHistory, Integer>{

}
