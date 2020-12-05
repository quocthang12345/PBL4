package com.SpringMVC.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringMVC.model.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
	UserEntity findOneByUserNameAndStatus(String username, int status);

	
	@Query(value = "SELECT MAX(u.id) FROM UserEntity u",nativeQuery = true)
	long getLastElement();
	
//	@Query(value = "SELECT u.courses FROM UserEntity u WHERE u.id = ?1")
//	List<CourseEntity> getCourseInUser(Long userID);

}
