package asm.group4.steam.model;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
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
@Table(name = "games")
public class Game {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
Integer id_game;
String name_game;
@Column(name = "description_game", columnDefinition = "nvarchar(max)")
String description_game;
Double price_game;
Boolean status;
LocalDate releasedate_game;
String version_game;
@ManyToOne@JoinColumn(name = "id_gameType")
GameType gametype;
@ManyToOne @JoinColumn(name = "id_supplier")
Supplier supplier;
@OneToMany(mappedBy = "game")
List<TransactionHistory> transactionHistory;
@OneToOne(mappedBy = "game")
Requirement requirement;
@OneToMany(mappedBy = "game")
List<ImageGame> imageGame;
@OneToMany(mappedBy = "game")
List<KeyCode> keyCode;


}
