package com.SpringMVC.model.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringMVC.model.dto.ActivityDTO;
import com.SpringMVC.model.entity.ActivityEntity;

@Component
public class activityConvert {
	@Autowired
	private ModelMapper modelMapper;
	
	
	public ActivityDTO toDTO(ActivityEntity activityEntity) {
		ActivityDTO activity = modelMapper.map(activityEntity,ActivityDTO.class);
		return activity;
	}
	
	public ActivityEntity toEntity(ActivityDTO activityDto) {
		ActivityEntity activity = modelMapper.map(activityDto, ActivityEntity.class);
	    if (activityDto.getId() != null) {


	    }
	    return activity;
	}
}
