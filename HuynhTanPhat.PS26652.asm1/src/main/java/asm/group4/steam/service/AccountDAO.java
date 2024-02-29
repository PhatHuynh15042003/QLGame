package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm.group4.steam.model.Account;

public interface AccountDAO extends JpaRepository<Account, Integer>{
	@Query("select o from Account o where o.id_account = ?1")
	Account findById_account(String id_account);
	@Query("select o from Account o where o.email_account = ?1")
	Account findByEmail(String email_account);
}
