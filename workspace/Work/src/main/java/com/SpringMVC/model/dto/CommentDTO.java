package com.SpringMVC.model.dto;

public class CommentDTO extends AbstractDTO<CommentDTO> {
	private String commentContent;
	private Long userID;
	private String fullName;
	private Long workID;
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Long getUserID() {
		return userID;
	}
	public void setUserID(Long userID) {
		this.userID = userID;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Long getWorkID() {
		return workID;
	}
	public void setWorkID(Long workID) {
		this.workID = workID;
	}
	
	
	
	
	

}
