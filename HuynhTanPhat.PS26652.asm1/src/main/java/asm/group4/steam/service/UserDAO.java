package asm.group4.steam.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm.group4.steam.model.Account;
import asm.group4.steam.model.User;

public interface UserDAO extends JpaRepository<User, String>{
	@Query("select o from User o where o.email_nguoiDung = ?1")
	User findByEmail(String email_account);
}
