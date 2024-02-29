package asm.group4.steam.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "requirements")
public class Requirement {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_requirement;
	@OneToOne @JoinColumn(name = "id_game")
	Game game;
	String os_requirement;
	Integer processor_requirement;
	String memory_requirement;
	Double storage_requirement;
	String card_requirement;
}
