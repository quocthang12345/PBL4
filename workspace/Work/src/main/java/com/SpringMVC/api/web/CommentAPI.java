package com.SpringMVC.api.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.SpringMVC.model.dto.CommentDTO;
import com.SpringMVC.service.ICommentService;

@RestController(value = "CommentApiOfWeb")
public class CommentAPI {
	
	@Autowired
	private ICommentService commentService;
	
	@GetMapping(value = "/api/comment")
	public CommentDTO ReadReview(){
		return null;
	}
	
	@PostMapping(value = "/api/comment")
	public CommentDTO InsertReview(@RequestBody CommentDTO commentDto){
		return commentService.InsertComment(commentDto);
	}
	
	@PutMapping(value = "/api/comment")
	public CommentDTO UpdateReview(@RequestBody CommentDTO commentDto){
		return null;	
	}
	
	@DeleteMapping(value = "/api/comment")
	public void DeleteReview(@RequestBody long id){
		commentService.DeleteComment(id);
	}
}
