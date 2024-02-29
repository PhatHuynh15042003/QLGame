package asm.group4.steam.model;

import java.time.LocalDate;

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
@Table(name = "users")
public class User {
	@Id
	String email_nguoiDung;
	String firstname_nguoiDung;
	String lastname_nguoiDung;
	String sdt_nguoiDung;
	LocalDate registerdate_nguoiDung;
	String image_nguoiDung;
	@OneToOne @JoinColumn(name = "id_account")
	Account account;
	
}
