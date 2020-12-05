package com.SpringMVC.model.dto;

import java.util.Date;
import java.util.List;

public class WorkDTO extends AbstractDTO<WorkDTO> {
	private String workName;
	private String thumbnail;
	
	private String base64;
	
	private String workDescription;
	private String workContent;
	private List<AssignmentDTO> assignments;
	private Date deadline;
	private List<CommentDTO> commentWork;
	private Long teamId;
	private String teamCode;
	private String teamName;
	
	
	public String getWorkName() {
		return workName;
	}
	public void setWorkName(String workName) {
		this.workName = workName;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getBase64() {
		return base64;
	}
	public void setBase64(String base64) {
		this.base64 = base64;
	}
	public String getWorkDescription() {
		return workDescription;
	}
	public void setWorkDescription(String workDescription) {
		this.workDescription = workDescription;
	}
	public String getWorkContent() {
		return workContent;
	}
	public void setWorkContent(String workContent) {
		this.workContent = workContent;
	}
	public List<AssignmentDTO> getAssignments() {
		return assignments;
	}
	public void setAssignments(List<AssignmentDTO> assignments) {
		this.assignments = assignments;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public List<CommentDTO> getCommentWork() {
		return commentWork;
	}
	public void setCommentWork(List<CommentDTO> commentWork) {
		this.commentWork = commentWork;
	}
	public Long getTeamId() {
		return teamId;
	}
	public void setTeamId(Long teamId) {
		this.teamId = teamId;
	}
	public String getTeamCode() {
		return teamCode;
	}
	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	
	
	
	
}
