package asm.group4.steam.model;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

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
@Table(name = "transaction_histories")
public class TransactionHistory {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_transaction;
	@ManyToOne @JoinColumn(name = "id_game")
	Game game;
	@OneToOne @JoinColumn(name = "id_keyCode")
	KeyCode keycode;
	@ManyToOne @JoinColumn(name = "id_account")
	Account account;
	LocalDate date_transaction;
	Double money_transaction;
	
}
