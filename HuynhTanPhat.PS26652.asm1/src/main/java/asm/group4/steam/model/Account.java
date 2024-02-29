package asm.group4.steam.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "accounts")
public class Account {
	@Id @Column(name = "id_account")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_account;
	String password_account;
	Boolean role_account = false;
	@ManyToOne @JoinColumn(name = "id_ranktype")
	RankType rankType;
	Double money_account;
	String email_account;
	Integer level_account;
	@OneToOne(mappedBy = "account")
	User user;
	@OneToOne(mappedBy = "account")
	Admin admin;
	@OneToMany(mappedBy = "account")
	List<DepositHistory> depositHistory;
	@OneToMany(mappedBy = "account")
	List<TransactionHistory> transactionHistory;
	
	public String getRole(Boolean role_account) {
		String r = "";
		if(!role_account) {
			r = "User";
		}else {
			r = "Admin";
		}
		return r;
	}
	
	
}
