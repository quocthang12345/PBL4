package com.SpringMVC.model.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringMVC.model.dto.WorkDTO;
import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.service.IWorkService;

@Component
public class workConvert {
	@Autowired
	private ModelMapper modelMapper;
	@Autowired
	private IWorkService workService;
	
	public WorkDTO toDTO(WorkEntity workEntity) {
		WorkDTO work = modelMapper.map(workEntity,WorkDTO.class);
		return work;
	}
	
	public WorkEntity toEntity(WorkDTO workDto) {
		WorkEntity work = modelMapper.map(workDto, WorkEntity.class);
	    if (workDto.getId() != null) {
	    	WorkEntity result = workService.findOneById(workDto.getId());
	    	result.setWorkContent(workDto.getWorkContent());
	    	result.setWorkDescription(workDto.getWorkDescription());
	    	result.setWorkName(workDto.getWorkName());
	    	return result;
	    }
	    return work;
	}
}
