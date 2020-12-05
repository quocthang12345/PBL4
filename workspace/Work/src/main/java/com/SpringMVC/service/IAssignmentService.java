package com.SpringMVC.service;

import java.util.List;

import com.SpringMVC.model.dto.AssignmentDTO;
import com.SpringMVC.model.entity.AssignmentEntity;

public interface IAssignmentService {
	List<AssignmentDTO> findAll();
	AssignmentDTO Insert(AssignmentDTO assignment);
	AssignmentDTO findOne(Long id);
	AssignmentEntity findById(Long id);
	AssignmentDTO Update(AssignmentDTO assignment);
	void Delete(Long[] ids);
	List<AssignmentDTO> findByWorkID(Long workID,String keyword);
	List<AssignmentDTO> findListByWorkID(Long workID);
	Long getLastIdAssignment();
	Long getNextIdAssignment(Long previousID);
}
