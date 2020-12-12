package com.SpringMVC.service;

import java.util.List;

import com.SpringMVC.model.dto.ActivityDTO;
import com.SpringMVC.model.entity.ActivityEntity;

public interface IActivityService {
	List<ActivityDTO> findAll();
	void save(ActivityEntity activity);
	List<ActivityDTO> findLast();
}