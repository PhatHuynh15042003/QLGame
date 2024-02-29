package asm.group4.steam.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import asm.group4.steam.model.RankType;

public interface RankDAO extends JpaRepository<RankType, Integer>{
	@Query("Select o.id_ranktype from RankType o")
	List<String> findByRank();
}
