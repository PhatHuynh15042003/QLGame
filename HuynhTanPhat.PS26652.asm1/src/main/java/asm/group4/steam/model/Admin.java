package asm.group4.steam.model;

import java.time.LocalDate;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "admins")
public class Admin {
	@Id
	String cccd_admin;
	String firstname_admin;
	String lastname_admin;
	String sdt_admin;
	LocalDate registerdate_admin;
	String image_admin;
	String email_admin;
	Boolean active_admin;
	@OneToOne @JoinColumn(name = "id_account")
	Account account;
}
