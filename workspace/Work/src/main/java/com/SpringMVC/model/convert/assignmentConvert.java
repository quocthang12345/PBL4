package com.SpringMVC.model.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringMVC.model.dto.AssignmentDTO;
import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.model.entity.AssignmentEntity;
import com.SpringMVC.service.IWorkService;
import com.SpringMVC.service.IAssignmentService;

@Component
public class assignmentConvert {
	@Autowired
	private ModelMapper modelMapper;
	@Autowired
	private IAssignmentService assignmentService;
	@Autowired
	private IWorkService workService;
	
	public AssignmentDTO toDTO(AssignmentEntity assignmentEntity) {
		AssignmentDTO assignment = modelMapper.map(assignmentEntity,AssignmentDTO.class);
		return assignment;
	}
	
	public AssignmentEntity toEntity(AssignmentDTO assignmentDto) {
		AssignmentEntity assignment = modelMapper.map(assignmentDto, AssignmentEntity.class);
	    if (assignmentDto.getId() != null) {
	    	AssignmentEntity result = assignmentService.findById(assignmentDto.getId());
	    	WorkEntity work = workService.findOneById(assignmentDto.getWorkId());
			 result.setWork(work);
			 result.setDescriptionAssignment(assignmentDto.getAssignmentDescription());
			 result.setAssignmentName(assignmentDto.getAssignmentName());
			 return result;
	    }
	    return assignment;
	}
}
