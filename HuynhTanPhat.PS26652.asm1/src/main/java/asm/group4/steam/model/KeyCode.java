package asm.group4.steam.model;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "KeyCode")
public class KeyCode implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_keyCode;
	String verification_keyCode;
	@ManyToOne @JoinColumn(name = "id_game")
	Game game;
	@OneToOne(mappedBy = "keycode")
	TransactionHistory transactionHistory;
	@Column(name = "active")
	Boolean active;
	
}

