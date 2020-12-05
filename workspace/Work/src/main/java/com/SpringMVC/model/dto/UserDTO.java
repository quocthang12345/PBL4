package com.SpringMVC.model.dto;

import java.util.List;

public class UserDTO extends AbstractDTO<UserDTO> {
	private String userName;
	private String userAvatar;
	private String base64;
	private String passWord;
	private String fullName;
	private int status;
	private Long roleId;
	private List<CommentDTO> userComment;
	

	
	public List<CommentDTO> getUserComment() {
		return userComment;
	}
	public void setUserComment(List<CommentDTO> userComment) {
		this.userComment = userComment;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	private Long HistoryId;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	
	
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Long getRoleId() {
		return roleId;
	}
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	public Long getHistoryId() {
		return HistoryId;
	}
	public void setHistoryId(Long historyId) {
		HistoryId = historyId;
	}

	public String getBase64() {
		return base64;
	}

	public void setBase64(String base64) {
		this.base64 = base64;
	}

	public String getUserAvatar() {
		return userAvatar;
	}

	public void setUserAvatar(String userAvatar) {
		this.userAvatar = userAvatar;
	}
	
	
}
