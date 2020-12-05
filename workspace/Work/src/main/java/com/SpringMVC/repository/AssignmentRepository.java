package com.SpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.SpringMVC.model.entity.AssignmentEntity;

public interface AssignmentRepository extends JpaRepository<AssignmentEntity, Long> {
	List<AssignmentEntity> findByWorkId(Long workID);	
	
	@Query(value = "SELECT l FROM AssignmentEntity l WHERE l.assignmentName LIKE %?1%")
	List<AssignmentEntity> search(String keyword);
	
	@Query(value = "SELECT MAX(l.id) FROM AssignmentEntity l")
	Long getLastId();
	
	@Query(value = "SELECT MIN(l.id) FROM AssignmentEntity l WHERE l.id > :previousID ")
	Long getNextId(@Param("previousID") Long previousID);
}
