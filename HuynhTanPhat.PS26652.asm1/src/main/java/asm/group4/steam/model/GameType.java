package asm.group4.steam.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "gametypes")
public class GameType implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_gameType;
	String name_gameType;
	@OneToMany(mappedBy = "gametype")
	List<Game> game;
}
