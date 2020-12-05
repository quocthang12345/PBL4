package com.SpringMVC.service;

import java.util.List;
import java.util.Map;

import com.SpringMVC.model.dto.TeamDTO;
import com.SpringMVC.model.entity.TeamEntity;

public interface ITeamService {
	Map<String,String> findAll();
	TeamEntity findByCode(String code);
	List<TeamDTO> findList();
	List<TeamDTO> search(String keyword);
}
