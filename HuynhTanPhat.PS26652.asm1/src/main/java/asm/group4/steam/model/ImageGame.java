package asm.group4.steam.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "imagegames")
public class ImageGame {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_image;
	String name_image;
	@ManyToOne @JoinColumn(name = "id_game")
	Game game;
}
