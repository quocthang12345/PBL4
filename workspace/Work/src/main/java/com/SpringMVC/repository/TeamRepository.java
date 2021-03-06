package com.SpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringMVC.model.entity.TeamEntity;

public interface TeamRepository extends JpaRepository<TeamEntity, Long> {
	TeamEntity findByTeamCode(String teamCode);
	
	@Query(value = "SELECT m FROM TeamEntity m WHERE m.teamName LIKE %?1%")
	List<TeamEntity> search(String keyword) ;
}
