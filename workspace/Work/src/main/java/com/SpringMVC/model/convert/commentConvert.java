package com.SpringMVC.model.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.SpringMVC.model.dto.CommentDTO;
import com.SpringMVC.model.entity.CommentEntity;

@Component
public class commentConvert {
	@Autowired
	private ModelMapper modelMapper;
	
	public CommentDTO toDTO(CommentEntity commentEntity) {
		CommentDTO comment = modelMapper.map(commentEntity,CommentDTO.class);
		return comment;
	}
	
	public CommentEntity toEntity(CommentDTO commentDTO) {
		CommentEntity comment = modelMapper.map(commentDTO, CommentEntity.class);
	    if (commentDTO.getId() != null) {
	    	
	    }
	    return comment;
	}
}
