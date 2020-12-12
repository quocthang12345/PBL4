package com.SpringMVC.service;

import java.util.List;

import com.SpringMVC.model.dto.CommentDTO;
import com.SpringMVC.model.entity.WorkEntity;

public interface ICommentService {
	CommentDTO InsertComment(CommentDTO commentDTO);
	 List<CommentDTO> findAllByWork(WorkEntity work);
	 void DeleteComment(Long id);
}
