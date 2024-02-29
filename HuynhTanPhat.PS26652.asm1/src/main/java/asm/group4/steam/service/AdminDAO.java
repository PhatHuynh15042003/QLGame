package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.Admin;

public interface AdminDAO extends JpaRepository<Admin, String>{
	@Query("select o from Admin o where o.email_admin = ?1")
	Admin findByEmail(String email_account);
}
