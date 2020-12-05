package com.SpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringMVC.model.entity.TeamEntity;
import com.SpringMVC.model.entity.WorkEntity;

public interface WorkRepository extends JpaRepository<WorkEntity, Long> {
	
	@Query(value = "SELECT c FROM WorkEntity c WHERE c.workName LIKE %?1%")
	List<WorkEntity> search(String keyword);
	
//	@Query(value = "SELECT c.users FROM CourseEntity c WHERE c.id = ?1")
//	List<UserEntity> getUserInCourse(Long courseID);
	
	List<WorkEntity> findListByTeam(TeamEntity team);
	
	

}
