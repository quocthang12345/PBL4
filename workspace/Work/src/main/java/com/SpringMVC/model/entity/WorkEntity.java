package com.SpringMVC.model.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "work")
public class WorkEntity extends BaseEntity {
	
	@Column(name = "name")
	private String workName;
	
	@Column(name = "thumbnail")
	private String thumbnail;
	
	@Column(name = "description")
	private String workDescription;
	
	@Column(name = "content")
	private String workContent;
	
	@Column(name = "deadline")
	private Date deadLine;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "work")
    private List<AssignmentEntity> assignments;
    
    
    @ManyToOne(fetch = FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name = "team_id" ,nullable = false, 
	        foreignKey = @ForeignKey(name = "fk_work_team"))
	private TeamEntity team;
    
	
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "workComment")
    private List<CommentEntity> comments;
    
    

	public String getWorkName() {
		return workName;
	}

	public void setWorkName(String workName) {
		this.workName = workName;
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

	public Date getDeadLine() {
		return deadLine;
	}

	public void setDeadLine(Date deadLine) {
		this.deadLine = deadLine;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public List<AssignmentEntity> getAssignments() {
		return assignments;
	}

	public void setAssignments(List<AssignmentEntity> assignments) {
		this.assignments = assignments;
	}

	

	public List<CommentEntity> getComments() {
		return comments;
	}

	public void setComments(List<CommentEntity> comments) {
		this.comments = comments;
	}

	public TeamEntity getTeam() {
		return team;
	}

	public void setTeam(TeamEntity team) {
		this.team = team;
	}

	
	

}
