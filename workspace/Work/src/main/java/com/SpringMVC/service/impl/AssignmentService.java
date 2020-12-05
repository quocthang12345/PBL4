package com.SpringMVC.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringMVC.model.convert.assignmentConvert;
import com.SpringMVC.model.dto.AssignmentDTO;
import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.model.entity.AssignmentEntity;
import com.SpringMVC.repository.WorkRepository;
import com.SpringMVC.repository.AssignmentRepository;
import com.SpringMVC.service.IAssignmentService;

@Service
public class AssignmentService implements IAssignmentService {
	
	@Autowired
	private assignmentConvert convertAssignment;
	@Autowired
	private AssignmentRepository assignmentRepo;
	@Autowired
	private WorkRepository workRepo;
	
	@Override
	public List<AssignmentDTO> findAll() {
		List<AssignmentDTO> result = new ArrayList<>();
		for(AssignmentEntity assignment : assignmentRepo.findAll()) {
			result.add(convertAssignment.toDTO(assignment));
		}
		return result;
	}

	@Override
	@Transactional
	public AssignmentDTO Insert(AssignmentDTO assignment) {
		WorkEntity work = workRepo.findOne(assignment.getWorkId());
		AssignmentEntity assignmentEntity = convertAssignment.toEntity(assignment);
		return convertAssignment.toDTO(assignmentRepo.save(assignmentEntity));
	}
	

	@Override
	public AssignmentDTO findOne(Long id) {
		return convertAssignment.toDTO(assignmentRepo.findOne(id));
	}

	@Override
	public AssignmentEntity findById(Long id) {
		return assignmentRepo.findOne(id);
	}

	@Override
	@Transactional
	public AssignmentDTO Update(AssignmentDTO assignment) {
		AssignmentEntity newAssignment = convertAssignment.toEntity(assignment);
		return convertAssignment.toDTO(assignmentRepo.save(newAssignment));
	}

	@Override
	@Transactional
	public void Delete(Long[] ids) {
		for(Long id : ids) {
			assignmentRepo.delete(id);
		}
	}

	@Override
	public List<AssignmentDTO> findByWorkID(Long workID,String keyword) {
		List<AssignmentDTO> rs = new ArrayList<>();
		if(keyword != null) {
			for(AssignmentEntity assignmentFind : assignmentRepo.search(keyword)) {
				rs.add(convertAssignment.toDTO(assignmentFind));
			}
			return rs;
		}
		for(AssignmentEntity assignment : assignmentRepo.findByWorkId(workID)) {
			rs.add(convertAssignment.toDTO(assignment));
		}
		return rs;
	}


	@Override
	public List<AssignmentDTO> findListByWorkID(Long workID) {
		List<AssignmentDTO> result = new ArrayList<AssignmentDTO>();
		for(AssignmentEntity assignment : assignmentRepo.findByWorkId(workID)) {
			result.add(convertAssignment.toDTO(assignment));
		}
		return result;
	}

	@Override
	public Long getLastIdAssignment() {
		return assignmentRepo.getLastId();
	}

	@Override
	public Long getNextIdAssignment(Long previousID) {
		return assignmentRepo.getNextId(previousID);
	}

}
