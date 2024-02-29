package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;
import asm.group4.steam.model.TransactionHistory;

public interface TransactionDAO extends JpaRepository<TransactionHistory, Integer>{

}
