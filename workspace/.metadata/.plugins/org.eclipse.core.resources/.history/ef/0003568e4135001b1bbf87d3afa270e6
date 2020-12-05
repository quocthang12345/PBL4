package com.SpringMVC.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringMVC.model.convert.teamConvert;
import com.SpringMVC.model.dto.TeamDTO;
import com.SpringMVC.model.entity.TeamEntity;
import com.SpringMVC.model.entity.WorkEntity;
import com.SpringMVC.repository.TeamRepository;
import com.SpringMVC.service.ITeamService;

@Service
public class TeamService implements ITeamService {

	@Autowired
	private TeamRepository teamRepo;
	@Autowired
	private teamConvert teamConverter;
	
	@Override
	public Map<String,String> findAll() {
		Map<String,String> result = new HashMap<String, String>();
		for(TeamEntity team : teamRepo.findAll()) {
			result.put(team.getTeamCode(), team.getTeamName());
		}
		return result;
	}

	@Override
	public TeamEntity findByCode(String code) {
		return teamRepo.findByTeamCode(code);
	}

	@Override
	public List<TeamDTO> findList() {
		List<TeamDTO> result = new ArrayList<TeamDTO>();
		for(TeamEntity team : teamRepo.findAll()) {
			result.add(teamConverter.toDTO(team));
		}
		return result;
	}

	@Override
	public List<TeamDTO> search(String keyword) {
		List<TeamDTO> result = new ArrayList<TeamDTO>();
		for(TeamEntity team : teamRepo.search(keyword)) {
			result.add(teamConverter.toDTO(team));
		}
		return result;
	}

}
