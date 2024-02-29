package asm.group4.steam.model;

import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
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
@Table(name = "ranktypes")
public class RankType {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_ranktype;
	String name_rankType;
	Double price_rankType;
	@OneToMany(mappedBy = "rankType")
	List<Account> account;
}
