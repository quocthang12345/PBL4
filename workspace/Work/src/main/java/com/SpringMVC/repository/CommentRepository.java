package com.SpringMVC.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.model.entity.CommentEntity;

public interface CommentRepository extends JpaRepository<CommentEntity, Long> {
	  
	  @Query(value = "SELECT r FROM CommentEntity r WHERE r.workComment = ?1 ORDER BY r.id DESC")
	  List<CommentEntity> findByWorkReview(WorkEntity work);
}
