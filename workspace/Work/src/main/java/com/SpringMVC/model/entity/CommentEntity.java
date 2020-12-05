package com.SpringMVC.model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "comment")
public class CommentEntity extends BaseEntity {

	@Column(name = "comment")
	private String contentComment;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false, 
        foreignKey = @ForeignKey(name = "fk_comment_user"))
    private UserEntity userComment;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "work_id", nullable = false, 
        foreignKey = @ForeignKey(name = "fk_comment_work"))
    private WorkEntity workComment;

	public String getContentComment() {
		return contentComment;
	}

	public void setContentComment(String contentComment) {
		this.contentComment = contentComment;
	}

	public UserEntity getUserComment() {
		return userComment;
	}

	public void setUserComment(UserEntity userComment) {
		this.userComment = userComment;
	}

	public WorkEntity getWorkComment() {
		return workComment;
	}

	public void setWorkComment(WorkEntity workComment) {
		this.workComment = workComment;
	}

	
	
	
	
	
	
	
	
}
