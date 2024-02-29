package asm.group4.steam.model;

import org.hibernate.annotations.Tables;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "deposit_histories")
public class DepositHistory {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id_deposit;
	@ManyToOne @JoinColumn(name = "id_account")
	Account account;
	Double money_deposit;
}
