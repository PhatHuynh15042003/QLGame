package asm.group4.steam.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "suppliers")
public class Supplier {
	@Id @Column(name = "id_supplier")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_supplier;
	@Column(name="name_supplier")
	String name_supplier;
	String gmail_supplier;
	String sdt_supplier;
	@OneToMany(mappedBy = "supplier")
	List<Game> game;
}
