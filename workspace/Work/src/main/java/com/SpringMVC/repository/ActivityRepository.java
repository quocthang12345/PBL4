package com.SpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.SpringMVC.model.entity.ActivityEntity;

@Repository
public interface ActivityRepository extends JpaRepository<ActivityEntity,Long> {
	
	@Query(value = "SELECT a FROM ActivityEntity a ORDER BY a.id DESC")
	List<ActivityEntity>findLast();
}
