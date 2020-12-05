package com.SpringMVC.model.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;


@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "createdate")
	@CreatedDate
	private Date createDate;
	
	@Column(name = "modifydate")
	@LastModifiedDate
	private Date modifyDate;
	
	@Column(name = "createby")
	@CreatedBy
	private String createBy;
	
	@Column(name = "modifyby")
	@LastModifiedBy
	private String modifyBy;

	public Long getId() {
		return id;
	}

	public Date getCreateDate() {
		return createDate;
	}


	public Date getModifyDate() {
		return modifyDate;
	}


	public String getModifyBy() {
		return modifyBy;
	}
	
	public String getCreateBy() {
		return createBy;
	}
	
	
	
}
